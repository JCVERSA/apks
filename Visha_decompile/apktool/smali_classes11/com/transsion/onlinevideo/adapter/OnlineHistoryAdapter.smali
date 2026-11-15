.class public Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public o:I

.field public p:Ljava/util/ArrayList;

.field public q:Ljava/util/ArrayList;

.field public r:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

.field public s:Landroid/content/Context;

.field public t:Z

.field public u:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->rv_item_online_history_video:I

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->q:Ljava/util/ArrayList;

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->r:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->s:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->r(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->l(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->s(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->t(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->t:Z

    return-void
.end method

.method public B(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 9

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-wide v1, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget-wide v7, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastPos:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_1

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v7, v3

    div-long/2addr v7, v1

    long-to-int v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    :goto_1
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-float v3, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-ge v1, v4, :cond_2

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/magicvideo/R$string;->progress_text_less_format:I

    const-wide v7, 0x3f847ae140000000L    # 0.009999999776482582

    invoke-virtual {v2, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->online_history_watch_done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/magicvideo/R$string;->progress_text_format:I

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    sget v3, Lcom/transsion/magicvideo/R$id;->sb_history:I

    invoke-virtual {p1, v3, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setProgress(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object v1

    sget v3, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_size:I

    invoke-virtual {v1, v3, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :cond_4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget v3, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->o:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_4
    sget v1, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item:I

    iget-object v2, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag:I

    iget v2, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->serial_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->finish_status:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoCover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {p2, v1, p0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final C(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 9

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getRecommends()[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_recommend_1:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_0
    sget v5, Lcom/transsion/onlinevideo/R$id;->ll_recommend_1:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v6, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag1:I

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getSerial_count()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getFinish_status()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v6, Lcom/transsion/onlinevideo/R$id;->tv_media_title1:I

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v6, Lcom/transsion/onlinevideo/R$id;->iv_vip1:I

    sget-boolean v7, Lpp3;->L:Z

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->showVipLogo()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    invoke-virtual {p1, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v7, Lcom/transsion/onlinevideo/R$id;->iv_media_cover1:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_x()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_y()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v8

    if-nez v8, :cond_3

    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_2

    :cond_3
    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_2
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v8

    if-nez v8, :cond_4

    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_3

    :cond_4
    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_3
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v7, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lvf7;

    invoke-direct {v6, p0, v0}, Lvf7;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getRecommends()[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    move-result-object v0

    aget-object v0, v0, v4

    if-nez v0, :cond_5

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_recommend_2:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_5
    sget v5, Lcom/transsion/onlinevideo/R$id;->ll_recommend_2:I

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v6, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag2:I

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getSerial_count()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getFinish_status()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v6, Lcom/transsion/onlinevideo/R$id;->tv_media_title2:I

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v6, Lcom/transsion/onlinevideo/R$id;->iv_vip2:I

    sget-boolean v7, Lpp3;->L:Z

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->showVipLogo()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_5

    :cond_6
    move v7, v1

    :goto_5
    invoke-virtual {p1, v6, v7}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v7, Lcom/transsion/onlinevideo/R$id;->iv_media_cover2:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_x()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_y()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v8

    if-nez v8, :cond_8

    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_7

    :cond_8
    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_7
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v8

    if-nez v8, :cond_9

    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_8

    :cond_9
    sget v8, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_8
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v7, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lwf7;

    invoke-direct {v6, p0, v0}, Lwf7;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getRecommends()[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    move-result-object p2

    const/4 v0, 0x2

    aget-object p2, p2, v0

    if-nez p2, :cond_a

    sget p0, Lcom/transsion/onlinevideo/R$id;->ll_recommend_3:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    :cond_a
    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_recommend_3:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v2, Lcom/transsion/onlinevideo/R$id;->iv_serial_tag3:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getSerial_count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getFinish_status()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lat7;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/onlinevideo/R$id;->tv_media_title3:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v2, Lcom/transsion/onlinevideo/R$id;->iv_vip3:I

    sget-boolean v3, Lpp3;->L:Z

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->showVipLogo()Z

    move-result v3

    if-eqz v3, :cond_b

    move v1, v4

    :cond_b
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->iv_media_cover3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_x()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_c
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getCover_y()Ljava/lang/String;

    move-result-object v3

    :goto_a
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v3

    if-nez v3, :cond_d

    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_b

    :cond_d
    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_b
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->k()Z

    move-result v3

    if-nez v3, :cond_e

    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_video_horizontal_placeholder:I

    goto :goto_c

    :cond_e
    sget v3, Lcom/transsion/onlinevideo/R$drawable;->ic_online_cover_default:I

    :goto_c
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lxf7;

    invoke-direct {v0, p0, p2}, Lxf7;-><init>(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_d
    return-void
.end method

.method public final D(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-boolean p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getRecommends()[Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->title:Ljava/lang/String;

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public h(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-gt v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-boolean v3, v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    :try_start_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_main_fragment_item_date:I

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    iget-wide v6, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->lastWatchTime:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v3, v6, v7}, Lwna;->h(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget v6, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->o:I

    if-eq v6, v2, :cond_2

    if-ne v6, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    filled-new-array {v3}, [I

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->h(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->B(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    goto :goto_3

    :cond_4
    if-ne v0, v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->D(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->C(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    :goto_3
    return-void
.end method

.method public j()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->t:Z

    return p0
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget p2, Lcom/transsion/onlinevideo/R$layout;->rv_item_online_history_video:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    sget p2, Lcom/transsion/onlinevideo/R$layout;->rv_item_fragment_date:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    sget p2, Lcom/transsion/onlinevideo/R$layout;->rv_item_fragment_title:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0

    :cond_2
    sget p2, Lcom/transsion/onlinevideo/R$layout;->rv_item_fragment_recommend:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->createBaseViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic r(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    return-void
.end method

.method public final synthetic s(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    return-void
.end method

.method public setOnSelectListener(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->u:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;

    return-void
.end method

.method public final synthetic t(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->u(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V

    return-void
.end method

.method public final u(Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V
    .locals 6

    iget v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->o:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_id()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_serial_source_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_id()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    sget-object v0, Ld06;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->s:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    const-string p0, "vd_ott_history_more_nodata_video_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public v(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->y()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->u:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;

    invoke-interface {v0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;->c(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public w(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnlineHistoryAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->x(ZI)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->u:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;

    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;->b(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public x(ZI)V
    .locals 3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    :goto_0
    add-int/lit8 v1, p2, 0x1

    if-gt v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-boolean v2, v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->isTimeItem:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move p2, v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->u:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;

    iget-object p2, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->p:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter$a;->b(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lyf7;

    invoke-direct {v1}, Lyf7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->o:I

    return-void
.end method
