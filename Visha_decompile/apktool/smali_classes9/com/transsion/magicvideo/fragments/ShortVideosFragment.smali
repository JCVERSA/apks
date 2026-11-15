.class public Lcom/transsion/magicvideo/fragments/ShortVideosFragment;
.super Lcom/transsion/magicvideo/fragments/VideosFragment;
.source "SourceFile"


# instance fields
.field public a1:I

.field public b1:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->a1:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->b1:Z

    return-void
.end method

.method public static synthetic g4(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->j4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic h4(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->i4(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public S2(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/adapter/ShortVideosAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->U(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->X(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->Z(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v2, Lcom/transsion/magicvideo/fragments/ShortVideosFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance p1, Lcom/transsion/magicvideo/fragments/ShortVideosFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {p1, p0, v0, v2}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string v0, "video"

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosFragment;->r0:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->e4()V

    return-void
.end method

.method public V3()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchRecyclerViewLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShortVideosFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e4()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-static {}, Lav3;->z()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-virtual {v1, v2, v3, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public final synthetic i4(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->k4()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lls1;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public final synthetic j4(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortVideosFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k4()Ljava/util/ArrayList;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ltpb;->e0(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public loadData(ZZ)V
    .locals 0

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->l()Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->a1:I

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->b1:Z

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lfi9;

    invoke-direct {p2, p0}, Lfi9;-><init>(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lgi9;

    invoke-direct {p2, p0}, Lgi9;-><init>(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string p1, "vd_short_show"

    invoke-static {p0, p1}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0xe

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$layout;->videos_short_fragment:I

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->onResume()V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->a1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->l()Lcom/transsion/dbdata/utils/SortUtil$SortType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->b1:Z

    invoke-static {}, Lcom/transsion/dbdata/utils/SortUtil;->n()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->loadData(ZZ)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->S2(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Q0(Landroid/view/View;Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->P2()V

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->loadData(ZZ)V

    :cond_0
    return-void
.end method

.method public updateShowUI()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-static {v0}, Lps1;->b(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    return-void
.end method
