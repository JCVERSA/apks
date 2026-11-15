.class public Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;
.super Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;
.source "SourceFile"


# instance fields
.field public r:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->banner_channel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;->r:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;->r:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;->r:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;->r:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->setData(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;->r:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    new-instance v1, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder$a;-><init>(Lcom/transsion/onlinevideo/widgets/topic/BannerViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->setListener(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;)V

    :cond_3
    return-void
.end method
