.class public Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;
.super Lcom/mgtv/ssp/adapter/BaseVideoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;
    }
.end annotation


# instance fields
.field private l:Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

.field private m:Lcom/mgtv/ssp/adapter/listener/a;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgtv/ssp/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;-><init>(Ljava/util/List;)V

    const-string p1, "FeedRecyclerViewAdapter"

    iput-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->n:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;)Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->l:Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    return-object p0
.end method

.method private a(Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->m:Lcom/mgtv/ssp/adapter/listener/a;

    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0, p1}, Lcom/mgtv/ssp/adapter/listener/a;->a(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->a(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    return-void
.end method

.method private b(Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->m:Lcom/mgtv/ssp/adapter/listener/a;

    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Lcom/mgtv/ssp/adapter/listener/a;->b(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->b(Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3
    sget p0, Lcom/mgtv/ssp/R$layout;->item_feed_ad_layout:I

    return p0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public a(Lcom/mgtv/ssp/adapter/BaseHolder;I)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/bean/VideoBean;

    .line 5
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoBean;->getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;

    move-result-object v0

    .line 6
    instance-of v1, p1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    if-eqz v1, :cond_b

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    .line 8
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getImgX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v4, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->d:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 11
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactImgY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactImgY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->k:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactImgX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactImgX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->k:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 19
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactImgY()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactImgX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 22
    :cond_2
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 25
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getShortType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 28
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u00b7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getShortType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 29
    :cond_5
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getShortType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 30
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getYear()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getShortType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 32
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getShortType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 33
    :cond_7
    iget-object v2, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->i:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :goto_2
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getDuration()I

    move-result v2

    if-lez v2, :cond_8

    .line 35
    iget-object v5, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->l:Landroid/widget/TextView;

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_8
    iput p2, p1, Lcom/mgtv/ssp/adapter/BaseHolder;->e:I

    .line 37
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getIntactVcode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 38
    iget-object p1, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 39
    :cond_9
    iget-object p1, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->m:Landroid/widget/TextView;

    new-instance p2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$1;-><init>(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :goto_3
    invoke-virtual {v0}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getReportH5()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 42
    iget-object p0, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->n:Landroid/widget/FrameLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 43
    :cond_a
    iget-object p1, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object p1, v1, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;->n:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$2;

    invoke-direct {p2, p0, v0}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$2;-><init>(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Lcom/mgtv/ssp/bean/VideoInfoBean;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public a(Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->l:Lcom/mgtv/ssp/adapter/listener/OnItemChildClickListener;

    return-void
.end method

.method public a(Lcom/mgtv/ssp/adapter/listener/a;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;->m:Lcom/mgtv/ssp/adapter/listener/a;

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/mgtv/ssp/adapter/BaseHolder;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/mgtv/ssp/R$layout;->item_video:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;

    invoke-direct {p2, p0, p1}, Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter$VideoHolder;-><init>(Lcom/mgtv/ssp/feed/adapter/FeedRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public b()V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgtv/ssp/adapter/BaseVideoAdapter;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
