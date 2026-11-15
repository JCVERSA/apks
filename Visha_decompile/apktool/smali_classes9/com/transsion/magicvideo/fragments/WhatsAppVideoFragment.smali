.class public Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;
.super Lcom/transsion/magicvideo/fragments/ShortVideosFragment;
.source "SourceFile"


# instance fields
.field public c1:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;-><init>()V

    return-void
.end method

.method public static synthetic l4(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->q4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic m4(Ljava/util/List;Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->p4(Ljava/util/List;Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n4(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->s4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o4(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->r4(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic p4(Ljava/util/List;Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lxkc;

    invoke-direct {p1}, Lxkc;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lxac;

    invoke-direct {p1}, Lxac;-><init>()V

    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltpb;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method public loadData(ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->c1:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->v(Lcom/transsion/playercommon/activities/BaseActivity;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x10

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->c1:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->b0(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;->c1:Lcom/transsion/playercommon/videomodel/WhatsappViewModel;

    new-instance v1, Lskc;

    invoke-direct {v1, p0}, Lskc;-><init>(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/videomodel/WhatsappViewModel;->Z(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->S2(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Q0(Landroid/view/View;Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->P2()V

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic q4(Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Lcom/transsion/magicvideo/utils/MediaItemDiffCallback;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/magicvideo/utils/MediaItemDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewDiffData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lykc;->a()Lykc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lykc;->c(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    return-void
.end method

.method public final synthetic r4(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "WhatsAppVideoFragment"

    const-string v1, "loadData error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    return-void
.end method

.method public final synthetic s4(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WhatsApp] loadData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhatsAppVideoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ltkc;

    invoke-direct {v1, p1}, Ltkc;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    new-instance v0, Lukc;

    invoke-direct {v0}, Lukc;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->u(Lie8;)Lmc7;

    move-result-object p1

    invoke-virtual {p1}, Lmc7;->k()Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lvkc;

    invoke-direct {v0, p0}, Lvkc;-><init>(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;)V

    new-instance v1, Lwkc;

    invoke-direct {v1, p0}, Lwkc;-><init>(Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;)V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->x1()V

    invoke-static {}, Lykc;->a()Lykc;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lykc;->c(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
