.class public Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;
.super Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;
.source "SourceFile"


# static fields
.field public static final G:I


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Landroid/view/View;

.field public D:Ljava/util/List;

.field public E:I

.field public F:I

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

.field public t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public u:Lcom/transsion/utils/CustomPagerSnapHelper;

.field public final v:Lcom/transsion/onlinevideo/a;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$layout;->topic_widget_video:I

    sput v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->G:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;-><init>(Landroid/view/View;)V

    iput p2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->x:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/onlinevideo/R$dimen;->recycler_last_view_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->q:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/onlinevideo/R$dimen;->recycler_last_view_min_width_for_media:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->p:I

    new-instance p2, Lcom/transsion/onlinevideo/a;

    iget v0, p0, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->q:I

    new-instance v1, Lc9c;

    invoke-direct {v1, p0}, Lc9c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/onlinevideo/a;-><init>(IILcom/transsion/onlinevideo/a$d;)V

    iput-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->v:Lcom/transsion/onlinevideo/a;

    return-void
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->x(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->w(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->v()V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->y(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->u(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->z(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private n()V
    .locals 1

    sget-object p0, Lo18;->g:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    :cond_0
    sget-object p0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public static synthetic t(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_collect:I

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getMediaBeanList()Ljava/util/List;

    move-result-object v0

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v7

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->f(Ljava/lang/String;)Z

    move-result v9

    const/4 v2, 0x1

    invoke-static/range {v2 .. v9}, Lwz5;->p(IJJJZ)V

    move-object/from16 v1, p2

    check-cast v1, Landroid/widget/ImageView;

    new-instance v15, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_type()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_x()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getCover_y()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JJ)V

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v15, v0, v2}, Lsf7;->a(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private synthetic v()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->c(ZLcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->w:Ljava/lang/String;

    return-void
.end method

.method public B(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->x:I

    return-void
.end method

.method public C(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->u:Lcom/transsion/utils/CustomPagerSnapHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/utils/CustomPagerSnapHelper;

    invoke-direct {v1}, Lcom/transsion/utils/CustomPagerSnapHelper;-><init>()V

    iput-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->u:Lcom/transsion/utils/CustomPagerSnapHelper;

    iget-object v2, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getMediaBeanList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getMediaBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$layout;->recycler_pull_last_view_for_media:I

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->v:Lcom/transsion/onlinevideo/a;

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    iget-object v5, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v5, v1}, Lcom/transsion/onlinevideo/a;->j(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_1
    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder$a;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getMediaBeanList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getFirstFeedStreamBean()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVkVideoId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v17, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getSort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->q(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    iget v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    if-lez v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    move v13, v4

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRecommendPart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v0, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRequestId()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v5 .. v17}, Lr16;->f(Landroid/view/View;JIJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public D(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getMediaBeanList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->btn_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->z:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->z:Landroid/view/View;

    new-instance v2, Ld9c;

    invoke-direct {v2, p0, p1}, Ld9c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->btn_all:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->C:Landroid/view/View;

    new-instance v2, Le9c;

    invoke-direct {v2, p0, p1}, Le9c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->btn_more_small:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->A:Landroid/view/View;

    new-instance v2, Lf9c;

    invoke-direct {v2, p0, p1}, Lf9c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->btn_roll_back:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->B:Landroid/view/View;

    new-instance v2, Lg9c;

    invoke-direct {v2, p0, p1}, Lg9c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->p(I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x6

    :goto_1
    iput p1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->F:I

    iput v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->o(Z)V

    return-void
.end method

.method public a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->y:I

    new-instance v0, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_topic_title:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_topic_btn:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_refrash:I

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_topic:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Ly8c;

    invoke-direct {v2, p0, p1}, Ly8c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lz8c;

    invoke-direct {v1, p0, p1}, Lz8c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->isHorizontal()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->s(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    iget v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->x:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->r(Z)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_media:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->x:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_3
    invoke-static {}, Lcom/transsion/preload/OptimizeListAdapter;->h()Ltd8;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->r:Landroidx/recyclerview/widget/RecyclerView;

    sget v3, Lcom/transsion/onlinevideo/R$layout;->media_grid_item:I

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v3, v4}, Ltd8;->e(Landroid/view/ViewGroup;II)V

    iget v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->x:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->C(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    :goto_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->k(J)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->u(J)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    new-instance v1, La9c;

    invoke-direct {v1, p1}, La9c;-><init>(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    new-instance v1, Lb9c;

    invoke-direct {v1, p0, p1}, Lb9c;-><init>(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public c(ZLcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/topic/TopicBaseViewHolder;->c(ZLcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setTopic(JLjava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_type()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setBottom_position(I)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setData_type(I)V

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    if-eqz p1, :cond_1

    sget-object v0, Ld06;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Ld06;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-eqz p1, :cond_2

    sget-object p0, Ld06;->e:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object p0, Ld06;->d:Ljava/lang/String;

    :goto_1
    invoke-static {v0, v1, v2, v3, p0}, Ld06;->e(JJLjava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->C:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->F:I

    iget v3, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    mul-int/2addr v2, v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v1, v2, :cond_0

    if-le v3, v6, :cond_0

    iget v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->y:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->B:Landroid/view/View;

    iget v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    if-le v1, v6, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->A:Landroid/view/View;

    iget v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    if-le v1, v6, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->F:I

    iget v3, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->z:Landroid/view/View;

    iget v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->F:I

    iget p0, p0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    mul-int/2addr v2, p0

    if-le v1, v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public o(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    iget v5, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->F:I

    mul-int v6, v4, v5

    if-le v3, v6, :cond_2

    add-int/2addr v4, v2

    iput v4, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    mul-int/2addr v4, v5

    iget-object v5, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    iget-object v6, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v6, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iput v2, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    iget v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->F:I

    iget-object v4, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    iget-object v5, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->D:Ljava/util/List;

    invoke-interface {v5, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->m()V

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getFirstFeedStreamBean()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVkVideoId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v16, v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getSort()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->s:Lcom/transsion/onlinevideo/adapter/MediaItemAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->q(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    iget v3, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->E:I

    if-lez v3, :cond_4

    move v12, v2

    goto :goto_3

    :cond_4
    move v12, v1

    :goto_3
    iget-object v1, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRecommendPart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->t:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRequestId()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static/range {v4 .. v16}, Lr16;->f(Landroid/view/View;JIJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public p(I)I
    .locals 0

    const/4 p0, 0x6

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public final q(Ljava/util/List;)Ljava/lang/String;
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    new-instance v2, Lcom/transsion/dbdata/beans/VideoIndex;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/transsion/dbdata/beans/VideoIndex;-><init>(IJ)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic r(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 8

    sget p2, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p2, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getContent_source()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->v(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final synthetic s(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getContent_source()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->v(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->c(ZLcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    return-void
.end method

.method public final synthetic u(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->n()V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getMediaBeanList()Ljava/util/List;

    move-result-object v1

    move/from16 v6, p4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_type()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getVideo_link()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToVishaWebViewInApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v2

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getSource_id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v7

    sget-object v8, Ld06;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRequestId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;ILjava/lang/String;J)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v2

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getSort()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getChannel_id()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getHorizontalFlag()I

    move-result v12

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getTitle()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->w:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRequestId()Ljava/lang/String;

    move-result-object v16

    move/from16 v6, p4

    invoke-static/range {v2 .. v16}, Ld06;->g(JJIIJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sget-object v2, Ld06;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsModel;->markAlgorithmRecommend(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/MediaBean;->getPay_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v6, "topic"

    invoke-static/range {v2 .. v7}, Ld06;->h(JJLjava/lang/String;I)V

    return-void
.end method

.method public final synthetic w(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->o(Z)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld06;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Ld06;->c(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic x(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->c(ZLcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    return-void
.end method

.method public final synthetic y(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->o(Z)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld06;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Ld06;->c(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic z(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;->o(Z)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld06;->h:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Ld06;->c(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
