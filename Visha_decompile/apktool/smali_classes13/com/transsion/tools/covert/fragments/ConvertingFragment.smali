.class public Lcom/transsion/tools/covert/fragments/ConvertingFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;


# instance fields
.field public l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

.field public m:Landroid/view/View;

.field public n:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

.field public o:Landroid/view/View;

.field public p:Lcom/transsion/tools/model/ConvertDaoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic f0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->n0(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/tools/covert/fragments/ConvertingFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/tools/covert/fragments/ConvertingFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->m0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i0(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->o0(Ljava/lang/Integer;)V

    return-void
.end method

.method private j0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->o:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/tools/R$id;->main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->o:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->lottie_no_audios_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->o:Landroid/view/View;

    sget v0, Lcom/transsion/sniffer_load/R$id;->text_no_audios:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/transsion/sniffer_load/R$string;->file_empty:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private k0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    new-instance v1, Lgj1;

    invoke-direct {v1, p0}, Lgj1;-><init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private synthetic l0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Lcom/transsion/tools/R$id;->iv_converting_remove:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->H(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->r0(Lcom/transsion/playercommon/convert/ConvertingTask;)V

    const-string p0, "moretab_tomp3_converting_cancelcl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic m0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->q0()V

    return-void
.end method

.method public static synthetic n0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ltpb;->o(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->loadData(Z)V

    return-void
.end method

.method public loadData(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->n:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lej1;

    invoke-direct {v1, p0, p1}, Lej1;-><init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v1, "num"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->i()I

    move-result v0

    const-string v1, "failnum"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->i()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v0, "moretab_tomp3_converting_show"

    const-wide/16 v1, 0x246c

    invoke-static {p1, p0, v0, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/tools/model/ConvertDaoModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/model/ConvertDaoModel;

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->p:Lcom/transsion/tools/model/ConvertDaoModel;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object v0

    new-instance v1, Lfj1;

    invoke-direct {v1, p0}, Lfj1;-><init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;)V

    const-string v2, "ConvertingFragment"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->L(Ljava/lang/String;Lcom/transsion/playercommon/convert/ConvertingTaskManager$c;)V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->m:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->o:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    invoke-virtual {p0}, Lcom/transsion/tools/covert/adapter/ConvertingAdapter;->t()V

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->f()V

    invoke-static {}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->j()Lcom/transsion/playercommon/convert/ConvertingTaskManager;

    move-result-object p0

    const-string v0, "ConvertingFragment"

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/convert/ConvertingTaskManager;->G(Ljava/lang/String;)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->converting_fragment:I

    return p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->loadData(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_main_fragment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->n:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    invoke-virtual {p1, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->n:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string p2, "tomp3"

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/tools/covert/fragments/ConvertingFragment$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment$a;-><init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object p2, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->n:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->k0()V

    invoke-virtual {p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->p0()V

    return-void
.end method

.method public final p0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->p:Lcom/transsion/tools/model/ConvertDaoModel;

    invoke-virtual {v0}, Lcom/transsion/tools/model/ConvertDaoModel;->getConvertingVideoData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/transsion/tools/covert/fragments/ConvertingFragment$b;

    invoke-direct {v2, p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment$b;-><init>(Lcom/transsion/tools/covert/fragments/ConvertingFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public q0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->l:Lcom/transsion/tools/covert/adapter/ConvertingAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x43e

    invoke-virtual {v2, v4, v3}, Lh27;->e(I[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->j0()V

    :cond_1
    iget-object v2, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->o:Landroid/view/View;

    if-eqz v2, :cond_3

    sget v3, Lcom/transsion/tools/R$id;->lottie_no_audios_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/transsion/tools/covert/fragments/ConvertingFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final r0(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    iget-object p1, p1, Lcom/transsion/playercommon/convert/ConvertingTask;->mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    new-instance p1, Lhj1;

    invoke-direct {p1}, Lhj1;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lij1;

    invoke-direct {p1}, Lij1;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
