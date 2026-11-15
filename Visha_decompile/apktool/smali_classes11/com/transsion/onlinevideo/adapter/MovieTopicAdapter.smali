.class public Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;
.super Lcom/transsion/preload/OptimizeListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/preload/OptimizeListAdapter<",
        "Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;",
        "Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:I

.field public u:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_item:I

    invoke-direct {p0, v0}, Lcom/transsion/preload/OptimizeListAdapter;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->q:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->t:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->j(Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    return-void
.end method

.method public getDefItemViewType(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public j(Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->v(Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_widget_banner:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/onlinevideo/R$layout;->topic_widget_label:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->r:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/transsion/onlinevideo/widgets/topic/LabelViewHolder;->f(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u:Landroid/util/SparseArray;

    const/16 p1, 0x43c

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lh27;->b(Lh27$b;I)V

    return-object p2

    :cond_1
    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_widget_history:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/WebcastDetailViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_widget_webcast_detail:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/widgets/topic/WebcastDetailViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_4
    const/4 v0, 0x7

    if-ne p2, v0, :cond_5

    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_widget_feed_stream:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/preload/OptimizeListAdapter;->i(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->s:Z

    invoke-direct {p2, p1, p0}, Lcom/transsion/onlinevideo/widgets/topic/FeedStreamViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p2

    :cond_5
    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_widget_history:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_6
    :goto_0
    new-instance p2, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_widget_video:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/preload/OptimizeListAdapter;->i(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->t:I

    invoke-direct {p2, p1, v0}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;-><init>(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->r:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->A(Ljava/lang/String;)V

    iget p0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->t:I

    invoke-virtual {p2, p0}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->B(I)V

    return-object p2
.end method

.method public l()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh27$b;

    iget-object v3, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lh27;->f(Lh27$b;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->k(Landroid/view/ViewGroup;I)Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->r:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->s:Z

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->t:I

    return-void
.end method

.method public u(Z)V
    .locals 3

    sget-object v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->q:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->q:Z

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisible notifyDataSetChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public v(Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->banner_channel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->q:Z

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->start(Z)V

    :cond_0
    return-void
.end method
