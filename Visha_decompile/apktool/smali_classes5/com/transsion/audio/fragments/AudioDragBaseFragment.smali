.class public Lcom/transsion/audio/fragments/AudioDragBaseFragment;
.super Lcom/transsion/audio/fragments/AudioBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/adapter/AudioItemAdapter$b;
.implements Lcom/transsion/audio/adapter/AudioItemAdapter$d;


# instance fields
.field public V:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Landroid/view/View$DragShadowBuilder;

.field public Z:Lcec;

.field public a0:I

.field public b0:Ljava/lang/String;

.field public c0:I

.field public d0:Landroid/view/View;

.field public e0:Ljava/util/List;

.field public f0:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

.field public g0:Z

.field public h0:[F

.field public i0:Landroid/os/Bundle;

.field public j0:F

.field public k0:F

.field public l0:F

.field public m0:Z

.field public n0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:I

.field public final t0:Lze7;

.field public final u0:Lbf7;

.field public v0:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->b0:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c0:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e0:Ljava/util/List;

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->g0:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->j0:F

    iput v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->k0:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->m0:Z

    new-instance v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$d;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->t0:Lze7;

    new-instance v0, Lto;

    invoke-direct {v0, p0}, Lto;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->u0:Lbf7;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Luo;

    invoke-direct {v1, p0}, Luo;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->v0:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Y1(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic I1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e0:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic J1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->g0:Z

    return-void
.end method

.method public static bridge synthetic K1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->o0:Z

    return-void
.end method

.method public static bridge synthetic L1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic M1(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private h2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    iput p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c0:I

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->b0:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->a2()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->v0:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->v0:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public K0(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->K0(Z)V

    return-void
.end method

.method public N1()V
    .locals 2

    const-class v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->n0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->n0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    new-instance v1, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public O1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnSelectListener(Lcom/transsion/audio/adapter/AudioItemAdapter$c;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnDragListener(Lcom/transsion/audio/adapter/AudioItemAdapter$b;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnTitleClickListener(Lcom/transsion/audio/adapter/AudioItemAdapter$d;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lcom/transsion/audio/fragments/AudioDragBaseFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$b;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lcom/transsion/audio/fragments/AudioDragBaseFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$c;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public P1()V
    .locals 3

    const-string v0, "disableManualDrag"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AudioDragBaseFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->o0:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c2()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {v1, v2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enable()V

    :cond_2
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLongPressDragEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMoveListener(Lze7;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1, v2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnTouchListener(Lcom/transsion/audio/adapter/AudioItemAdapter$e;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemStateChangedListener(Lbf7;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->K0(Z)V

    return-void
.end method

.method public Q1()V
    .locals 3

    const-string v0, "enableManualDrag"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AudioDragBaseFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->o0:Z

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    invoke-virtual {v2, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->disable()V

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLongPressDragEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->t0:Lze7;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMoveListener(Lze7;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->u0:Lbf7;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemStateChangedListener(Lbf7;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v2, Lso;

    invoke-direct {v2, p0}, Lso;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnTouchListener(Lcom/transsion/audio/adapter/AudioItemAdapter$e;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->b2()V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->K0(Z)V

    return-void
.end method

.method public final R1(ILcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->C:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->g2(Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    :cond_0
    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v2, p2, v1, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->P(Lcom/transsion/dbdata/beans/media/AudioItem;ZI)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-static {}, Lydc;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->v0:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->v0:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x320

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void
.end method

.method public final S1(ILcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    return-void
.end method

.method public T1(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->getDragAnimationView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->getDragAnimationView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/audio/R$id;->vs_audio_stack:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    sget v0, Lcom/transsion/audio/R$id;->ry_stack:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->C:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f0:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/playercommon/adapter/AudioStackAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    iget v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c0:I

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v0, v1}, Lcom/transsion/playercommon/stack/AudioStackLayoutManager;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    new-instance v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$a;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final U1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z:Lcec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcec;->release()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbec;->a(Landroid/content/Context;Z)Lcec;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z:Lcec;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$e;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V

    invoke-interface {v0, v1}, Lcec;->a(Laec;)V

    return-void
.end method

.method public V1(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c0:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f2(Landroid/view/View;Lcom/transsion/dbdata/beans/media/AudioItem;[F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->b0:Ljava/lang/String;

    iget v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c0:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h2(Landroid/view/View;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public final synthetic W1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic X1(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#1D000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getListFlag()I

    move-result p0

    invoke-static {p0}, Lpz5;->a(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#00ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d2()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic Y1(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->g0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e2(Landroid/view/View;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Y:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p1, p0}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public Z1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e0:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public a2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c0:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->r(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f0:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/AudioStackAdapter;->t(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->g2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public b2()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lt55;->n(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final c2()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->p0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->r0:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "audio_pref_sort_name_album"

    iget v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->s0:I

    invoke-static {v0, v1, v2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "audio_pref_sort_by_album"

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->q0:Z

    invoke-static {v0, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "audio_pref_sort_name"

    iget v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->s0:I

    invoke-static {v0, v1, v2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "audio_pref_sort_by"

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->q0:Z

    invoke-static {v0, v1, v2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    iget v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->s0:I

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->q(I)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->q0:Z

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->p(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->p0:Z

    return-void
.end method

.method public d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->b0:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->c0:I

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h2(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d2()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-static {v0, p0}, Lt55;->t(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final e2(Landroid/view/View;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 5

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_1

    move p2, v0

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "vishaplayerhd"

    invoke-static {v2, v4, v3}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/content/ClipData$Item;

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :cond_2
    :try_start_0
    new-instance p2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p2, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Y:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->U1()V

    const/16 p2, 0x301

    iput p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->a0:I

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Y:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p1, v2, v3, v1, p2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->z1(Z)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->C1(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e0:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    move p1, v0

    :goto_2
    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_6

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterLayoutCount()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p2, :cond_3

    sub-int/2addr p2, v1

    :cond_3
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    if-le p1, v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->e0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lbec;->b(Landroid/content/Context;)[F

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f2(Landroid/view/View;Lcom/transsion/dbdata/beans/media/AudioItem;[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startDragAnimation error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioDragBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public final f2(Landroid/view/View;Lcom/transsion/dbdata/beans/media/AudioItem;[F)V
    .locals 9

    invoke-static {}, Lav3;->z()Z

    move-result v3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x2

    new-array v6, p3, [I

    new-array v7, p3, [I

    sget p3, Lcom/transsion/audio/R$id;->ll_item:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ljf;->m(Landroid/content/Context;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ljf;->f(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->i0:Landroid/os/Bundle;

    if-eqz p3, :cond_3

    const-string v2, "position_x"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->j0:F

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->i0:Landroid/os/Bundle;

    const-string v2, "position_y"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->k0:F

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->i0:Landroid/os/Bundle;

    const-string v2, "scale"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    aget v2, v6, v1

    int-to-float v2, v2

    mul-float/2addr v2, p3

    iget v4, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->j0:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v6, v1

    aget v2, v6, v0

    int-to-float v2, v2

    mul-float/2addr v2, p3

    iget v8, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->k0:F

    add-float/2addr v2, v8

    float-to-int v2, v2

    aput v2, v6, v0

    aget v2, v7, v1

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v7, v1

    aget v2, v7, v0

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, v8

    float-to-int p3, v2

    aput p3, v7, v0

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    iput p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->j0:F

    iput p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->k0:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    new-instance v2, Lcom/transsion/audio/widgets/AudioAnimationView;

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, p3, p2}, Lcom/transsion/audio/widgets/AudioAnimationView;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p2, p3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    aget v4, v6, v1

    sub-int/2addr p3, v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr p3, v4

    aget v1, v7, v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    iget v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    div-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_4
    aget p3, v6, v1

    aget v1, v7, v1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    iget v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    div-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    sget p3, Lcom/transsion/audio/R$id;->cl_drag_animation_view:I

    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput p3, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    aget p3, v6, v0

    int-to-float p3, p3

    iget v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->l0:F

    const/high16 v4, 0x42dc0000    # 110.0f

    mul-float/2addr v4, v1

    iget v8, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->k0:F

    add-float/2addr v4, v8

    sub-float/2addr p3, v4

    div-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const p3, 0x3f333333    # 0.7f

    invoke-virtual {v2, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    const/16 p2, 0x64

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;

    move-object v0, p3

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$f;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Lcom/transsion/audio/widgets/AudioAnimationView;ZLandroid/view/View;Landroid/widget/LinearLayout;[I[I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->b0:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->h2(Landroid/view/View;Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public final g2(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->W:Lcom/transsion/playercommon/adapter/AudioStackAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->X:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$6;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;Ljava/util/ArrayList;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleManual(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->handleManual(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Q1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->P1()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z:Lcec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcec;->release()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z:Lcec;

    :cond_0
    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->v0:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_0
    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->d0:Landroid/view/View;

    return-void
.end method

.method public onManualSortRequested(IZZ)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->p0:Z

    iput p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->s0:I

    iput-boolean p2, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->q0:Z

    iput-boolean p3, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->r0:Z

    return-void
.end method

.method public s(Landroid/view/View;ILcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->m0:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isInEditMode : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "isManualSort : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AudioDragBaseFragment"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->S1(ILcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->R1(ILcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showSortPopupWindow(Landroid/view/View;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showSortPopupWindow(Landroid/view/View;ZZ)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x478

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public startDragMode(ZIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startDragMode(ZIZ)V

    iget-boolean p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->P1()V

    :cond_1
    return-void
.end method
