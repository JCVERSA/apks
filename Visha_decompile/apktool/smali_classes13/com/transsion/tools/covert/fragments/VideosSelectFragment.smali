.class public Lcom/transsion/tools/covert/fragments/VideosSelectFragment;
.super Lcom/transsion/magicvideo/fragments/VideosBaseFragment;
.source "SourceFile"

# interfaces
.implements Lh27$b;
.implements Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;


# instance fields
.field public Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

.field public a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field public b0:I

.field public c0:Lcom/transsion/utils/CustomGridLayoutManager;

.field public d0:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->b0:I

    new-instance v0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment$a;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->d0:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public static synthetic D1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;ZLcom/transsion/tools/covert/fragments/VideosSelectFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Q1(ZLcom/transsion/tools/covert/fragments/VideosSelectFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->M1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->P1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->N1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic H1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->R1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic I1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->O1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic J1(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic M1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method

.method private synthetic O1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private synthetic P1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic R1(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;

    invoke-virtual {p1}, Lcom/transsion/tools/covert/fragments/SelectVideoMainFragment;->B0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static S1(I)Lcom/transsion/tools/covert/fragments/VideosSelectFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;

    invoke-direct {v0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_flag"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private T1(Z)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    if-eqz p1, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    invoke-virtual {p0, p1}, Ltpb;->U(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-eqz p1, :cond_2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p1, p0}, Ltpb;->i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public H0(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public K1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setOnSelectListener(Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Ljbc;

    invoke-direct {v1, p0}, Ljbc;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Lkbc;

    invoke-direct {v1, p0}, Lkbc;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    new-instance v1, Llbc;

    invoke-direct {v1, p0}, Llbc;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public L1(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->X(I)V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v1, 0x63

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->c0(Z)V

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance p1, Lcom/transsion/tools/covert/fragments/VideosSelectFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->b0:I

    invoke-direct {p1, p0, v0, v1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment$b;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->c0:Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->d0:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->U(Z)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->c0:Lcom/transsion/utils/CustomGridLayoutManager;

    iget v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->b0:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->c0:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const-string p0, "video"

    goto :goto_0

    :cond_1
    const-string p0, "tomp3"

    :goto_0
    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic N1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_1
    return v1
.end method

.method public final synthetic Q1(ZLcom/transsion/tools/covert/fragments/VideosSelectFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->T1(Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lls1;->a(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F0(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public U1()V
    .locals 2

    const-string v0, "updateUI"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideosSelectFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->x1()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->H0(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->R(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G0()V

    iput-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x404

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x45e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x41c

    if-eq p1, v0, :cond_0

    const/16 p2, 0x41d

    if-eq p1, p2, :cond_4

    goto :goto_1

    :cond_0
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->refresh()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "from"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "type"

    const-string v0, "video"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    aget-object p2, p2, p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "status"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "vd_vmore_favorite_cl"

    invoke-static {p0, p1}, Lp06;->b0(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x41d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sget v0, Lcom/transsion/tools/R$id;->title_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v1, Lobc;

    invoke-direct {v1, p0}, Lobc;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/playercommon/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    sget v0, Lcom/transsion/tools/R$id;->menu_more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initSortView(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public loadData(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x320

    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p2

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lmbc;

    invoke-direct {v0, p0, p1}, Lmbc;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;Z)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lnbc;

    invoke-direct {p2, p0}, Lnbc;-><init>(Lcom/transsion/tools/covert/fragments/VideosSelectFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x9

    if-eqz p1, :cond_0

    const-string v1, "list_flag"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    :goto_0
    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O:Z

    :cond_1
    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-eqz p1, :cond_2

    const-string v1, "bucket_fragment_buicket_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v1, "bucket_fragment_is_internet"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    const-string v0, "bucket_fragment_buicket_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v1, "bucket_fragment_buicket_isVirtual"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolder(Z)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v1, "bucket_fragment_buicket_virtual_match_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolderMatchName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->a0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v1, "bucket_fragment_buicket_path"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x45e

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onDestroy()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45e

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->d0:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onFragmentAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "VideosSelectFragment"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    :cond_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->medias_select_fragment:I

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onPause()V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    const-string v1, "VideosSelectFragment"

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->K0()V

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->P(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onResume()V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    const-string v1, "VideosSelectFragment"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->K(Ljava/lang/String;Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L0()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "list_flag"

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->convert_main_empty_imgView_marginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottom:I

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->L1(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->K1()V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->initTitleBar(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public q(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->Z:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public t(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lp06;->B(ILjava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0}, Llpb;->h(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/transsion/tools/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    check-cast p1, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, v0, p2, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->T(Lcom/transsion/dbdata/beans/media/MediaItem;ZI)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    const/16 p4, 0x457

    invoke-virtual {p1, p4, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-static {p0, p2}, Lk16;->c(IZ)V

    return-void
.end method

.method public updateShowUI()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/VideosSelectFragment;->U1()V

    return-void
.end method

.method public x1()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->x1()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mMenuShowListener:Lcom/transsion/playercommon/fragments/BaseFragment$d;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment$d;->a(Z)V

    :cond_1
    return-void
.end method

.method public z1(I)V
    .locals 0

    return-void
.end method
