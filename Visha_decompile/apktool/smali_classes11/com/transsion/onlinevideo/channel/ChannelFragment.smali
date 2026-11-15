.class public Lcom/transsion/onlinevideo/channel/ChannelFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public A:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

.field public B:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public C:Landroid/widget/RelativeLayout;

.field public D:Landroid/view/View;

.field public E:I

.field public F:I

.field public G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

.field public H:Landroid/widget/TextView;

.field public final I:Ljava/lang/Runnable;

.field public final J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

.field public m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

.field public o:Z

.field public p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

.field public q:I

.field public r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Z

.field public y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    new-instance v0, Lwt0;

    invoke-direct {v0, p0}, Lwt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->I:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment$d;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    return p0
.end method

.method public static synthetic B0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic P(Lcom/transsion/onlinevideo/channel/ChannelFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->a1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/onlinevideo/channel/ChannelFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->b1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getMediaBeanList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->parseMediaBean(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->f1()V

    return-void
.end method

.method public static synthetic S(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->Y0()V

    return-void
.end method

.method private synthetic S0()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C0(I)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->U0()V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/onlinevideo/channel/ChannelFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->N0(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/onlinevideo/channel/ChannelFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->R0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/onlinevideo/channel/ChannelFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->O0(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->d1()V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/onlinevideo/channel/ChannelFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->T0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->c1()V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->g1()V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/onlinevideo/channel/ChannelFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->M0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->j1()V

    return-void
.end method

.method public static synthetic d0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->S0()V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->X0()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->e1()V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->i1()V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->Z0()V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->k1()V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/onlinevideo/channel/ChannelFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->W0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->h1()V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/onlinevideo/channel/ChannelFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->V0(Ljava/util/List;)V

    return-void
.end method

.method public static m1(Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;ZI)Lcom/transsion/onlinevideo/channel/ChannelFragment;
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/channel/ChannelFragment;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "history"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "channel"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "header_margin"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->Q0(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->P0()V

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    return-object p0
.end method

.method public static bridge synthetic q0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    return-object p0
.end method

.method public static bridge synthetic r0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->I:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    return p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic v0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Lcom/transsion/onlinevideo/utils/WebcastListUtils;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/onlinevideo/channel/ChannelFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C0(I)V

    return-void
.end method

.method public static bridge synthetic x0(Lcom/transsion/onlinevideo/channel/ChannelFragment;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result p0

    return p0
.end method

.method public static synthetic y0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    return p0
.end method

.method public static synthetic z0(Lcom/transsion/onlinevideo/channel/ChannelFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    return p0
.end method


# virtual methods
.method public final C0(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->E:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    iget v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->E:I

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->label_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/widgets/VishaShimmerFrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setShimmer(Lcom/facebook/shimmer/Shimmer;)Lcom/facebook/shimmer/ShimmerFrameLayout;

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o1(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->W(I)V

    goto :goto_2

    :cond_3
    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    iget v3, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    iget v4, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->E:I

    if-gt p1, v2, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o1(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->W(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public D0(Z)V
    .locals 3

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTypeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setHistoryBeanList(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getHistoryBeanList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setHistoryBeanList(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p1(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final E0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->w:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget v2, Lcom/transsion/onlinevideo/R$id;->online_video_empty_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_toview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lqt0;

    invoke-direct {v1, p0}, Lqt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->ll_no_wifi:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->ll_loading_channel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v3, Lcom/transsion/onlinevideo/R$id;->ll_empty:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v4, Lcom/transsion/onlinevideo/R$id;->tv_retry:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lrt0;

    invoke-direct {v4, p0, v0, v1}, Lrt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v3, Lcom/transsion/onlinevideo/R$id;->tv_content_retry:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Lst0;

    invoke-direct {v3, p0, v2, v1}, Lst0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflate empty stub error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChannelFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final F0(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isVkChannel()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChannelFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isVkChannel()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->getInstance()Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPageManager;->incrementAndGet()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public G0()V
    .locals 13

    const-string v0, "initData: "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ChannelFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->D(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Lft0;

    invoke-direct {v2, p0}, Lft0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Lgt0;

    invoke-direct {v2, p0}, Lgt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->G()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Lht0;

    invoke-direct {v2, p0}, Lht0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->B(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Lit0;

    invoke-direct {v2, p0}, Lit0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->t:Z

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isVkChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v2

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v4

    const/16 v5, 0x14

    const-string v6, "other"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v8, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v10

    iget v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v11

    const/16 v12, 0x14

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->E(Landroid/content/Context;IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public H0(ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->w:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->E0()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v3, Lcom/transsion/onlinevideo/R$id;->ll_loading_channel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v4, Lcom/transsion/onlinevideo/R$id;->ll_no_wifi:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v5, Lcom/transsion/onlinevideo/R$id;->ll_no_privacy:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    sget v6, Lcom/transsion/onlinevideo/R$id;->ll_empty:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-nez p2, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    sget v4, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    sget v3, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->x:Z

    :cond_6
    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p0, :cond_7

    const-string p0, "vd_ott_nodata_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public I0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment$b;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-static {v0, v1}, Lcom/transsion/playercommon/core/MainApp;->d(Ljava/lang/String;Lvz6;)V

    return-void
.end method

.method public J0(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->channel_pull_damping_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$dimen;->online_custom_refresh_view_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setProgressViewEndTarget(ZI)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v0, Lxt0;

    invoke-direct {v0, p0}, Lxt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public K0()V
    .locals 3

    new-instance v0, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getTopicLayout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->t(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isYoutubeChannel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->s(Z)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    new-instance v1, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment$c;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v0, Luf7;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Luf7;-><init>(Landroid/content/Context;)V

    new-instance v1, Lzs0;

    invoke-direct {v1, p0}, Lzs0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1}, Luf7;->setClickListener(Luf7$a;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/LoadMoreView;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->enableLoadMoreEndClick(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    new-instance v1, Lat0;

    invoke-direct {v1, p0}, Lat0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    new-instance v1, Lbt0;

    invoke-direct {v1, p0}, Lbt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    new-instance v1, Lct0;

    invoke-direct {v1, p0}, Lct0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Ldt0;

    invoke-direct {v1, p0}, Ldt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public L0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final synthetic M0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->w(Landroid/app/FragmentManager;)V

    return-void
.end method

.method public final synthetic N0(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 6

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v3

    const/16 v4, 0x14

    const-string v5, "other"

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    const-string p0, "vd_ott_nodata_retry_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic O0(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 6

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v3

    const/16 v4, 0x14

    const-string v5, "other"

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    return-void
.end method

.method public final synthetic P0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final synthetic R0(Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->x:Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v3, Lmt0;

    invoke-direct {v3, p0}, Lmt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    :goto_0
    new-instance v1, Lnt0;

    invoke-direct {v1}, Lnt0;-><init>()V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p1

    invoke-static {p1}, Lc06;->d(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->onPageRealShowDelayOneSecond()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->onPageRealShowDelayThreeSecond()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBannerBeanList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x43040000    # 132.0f

    invoke-static {v1, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D0(Z)V

    iget p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    if-ne p1, v2, :cond_5

    invoke-static {}, Lbcc;->a()V

    invoke-static {}, Lcl4;->f()Lcl4;

    move-result-object p1

    invoke-virtual {p1}, Lcl4;->c()V

    invoke-static {}, Lcl4;->f()Lcl4;

    move-result-object p1

    invoke-virtual {p1}, Lcl4;->p()V

    :cond_5
    iget p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->t:Z

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v2, v0

    :cond_8
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H0(ZZ)V

    :goto_3
    return-void
.end method

.method public final synthetic T0(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getHistoryBeanList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "vd_ott_history_show"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setHistoryBeanList(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D0(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-eqz p1, :cond_3

    new-instance v0, Lkt0;

    invoke-direct {v0, p0}, Lkt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final synthetic U0()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C0(I)V

    return-void
.end method

.method public final synthetic V0(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->y:Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setHistoryBeanList(Ljava/util/List;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->setHistoryBeanList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0, p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-eqz p1, :cond_3

    new-instance v0, Llt0;

    invoke-direct {v0, p0}, Llt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic W0(Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->x:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H0(ZZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    :goto_0
    return-void
.end method

.method public final synthetic X0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isVkChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->X(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->N()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v2

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v4

    const/16 v5, 0x14

    const-string v6, "pull"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    iput v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s1()V

    return-void
.end method

.method public final synthetic Y0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lc06;->j(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic Z0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    invoke-virtual {p0, v3}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result p0

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->C(IIII)V

    return-void
.end method

.method public final synthetic a1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget-object p2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3, p2, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->L(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    :cond_1
    return-void
.end method

.method public final synthetic b1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemChildClick"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChannelFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    :cond_0
    const-string p1, "onItemChildClick open"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_play_logo:I

    if-ne p1, v1, :cond_1

    const-string p1, "onItemChildClick logo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget-object p2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p1, p2, v0, p0, p3}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->w(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget v2, Lcom/transsion/onlinevideo/R$id;->cover_container:I

    if-ne p1, v2, :cond_3

    const-string p1, "onItemChildClick cover"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-eq p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->L(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic c1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/preload/OptimizeListAdapter;->h()Ltd8;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    sget v2, Lcom/transsion/onlinevideo/R$layout;->topic_widget_feed_stream:I

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Ltd8;->e(Landroid/view/ViewGroup;II)V

    invoke-static {}, Lcom/transsion/preload/OptimizeListAdapter;->h()Ltd8;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    sget v1, Lcom/transsion/onlinevideo/R$layout;->topic_widget_video:I

    invoke-virtual {v0, p0, v1, v3}, Ltd8;->e(Landroid/view/ViewGroup;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic d1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x436

    if-eq p1, p2, :cond_1

    const/16 p2, 0x44a

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget-object p2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p1, p2, v0, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic e1()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    invoke-static {p0}, Lc06;->p(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic f1()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p0

    invoke-static {p0}, Lc06;->e(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic g1()V
    .locals 7

    sget-object v0, Ld06;->i:Ljava/lang/String;

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/onlinevideo/R$string;->auto_play_stream_toast:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Lcom/transsion/onlinevideo/channel/ChannelFragment$a;

    invoke-direct {v3, p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment$a;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/onlinevideo/R$string;->auto_play_stream_toast_clickable:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v6, 0x12

    invoke-virtual {v4, v3, v1, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Let0;

    invoke-direct {v1, p0}, Let0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic h1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P()V

    :goto_0
    return-void
.end method

.method public final synthetic i1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r1()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->E:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o1(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    iget v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->E:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->D:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->W(I)V

    :cond_1
    return-void
.end method

.method public final synthetic j1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P()V

    :goto_0
    return-void
.end method

.method public final synthetic k1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p0, :cond_0

    sget p0, Lcom/transsion/onlinevideo/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public l1()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lazyLoadData: isViewCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->isViewCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVisibleToUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDataLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->isDataLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ChannelFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->isViewCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->isDataLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->isDataLoaded:Z

    :cond_0
    return-void
.end method

.method public final synthetic lambda$onViewCreated$0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    return-void
.end method

.method public final n1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l1()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lys0;

    invoke-direct {v1, p0}, Lys0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u(Z)V

    :cond_2
    return-void
.end method

.method public final o1(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {p4, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p4

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, v1, p4, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o:Z

    const-string v0, "channel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    const-string v0, "header_margin"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s:Z

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lcom/transsion/playercommon/utils/UpdateUtils;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->t:Z

    new-instance p1, Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    iget p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->q:I

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->W(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->w:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->O()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->w:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->v:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/core/MainApp;->s(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->l()V

    :cond_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->channel_fragment:I

    return p0
.end method

.method public final onPageRealShowDelayOneSecond()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lot0;

    invoke-direct {v1, p0}, Lot0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onPageRealShowDelayThreeSecond()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lpt0;

    invoke-direct {v1, p0}, Lpt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getTopicLayout()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getSort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2, p0}, Lc06;->n(ZIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->J:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStart()V

    const-string v0, "onStart"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ChannelFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    const-string v0, "onStop"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ChannelFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P()V

    :cond_0
    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "first_login"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "ChannelFragment"

    if-eqz p1, :cond_0

    const-string p1, "first login"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/transsion/onlinevideo/history/HistoryManager;->n(Ljava/util/List;)V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o:Z

    if-eqz p1, :cond_1

    const-string p1, "user Login"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v4

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v6

    const/16 v7, 0x14

    const-string v8, "other"

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o:Z

    if-eqz p1, :cond_0

    const-string p1, "ChannelFragment"

    const-string v0, "user ReLogin"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v2

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v4

    const/16 v5, 0x14

    const-string v6, "other"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/onlinevideo/R$id;->rv_topic:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    iput-object p2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    sget p2, Lcom/transsion/onlinevideo/R$id;->stick_header_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->C:Landroid/widget/RelativeLayout;

    sget p2, Lcom/transsion/onlinevideo/R$id;->tv_toast:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    new-instance v0, Lvt0;

    invoke-direct {v0, p0}, Lvt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {p2, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->V(Lcom/transsion/onlinevideo/utils/WebcastListUtils$e;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->K0()V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->J0(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->t:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H0(ZZ)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->I0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l1()V

    return-void
.end method

.method public p1(Ljava/util/List;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNewData error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChannelFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public privacyPermissionCheck()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->H0(ZZ)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v4

    const/16 v5, 0x14

    const-string v6, "other"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q1(Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->A:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    return-void
.end method

.method public r1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->B:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->A:Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v1, v2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment$e;->a(Z)V

    :cond_2
    return-void
.end method

.method public refresh()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v3

    const/16 v4, 0x14

    const-string v5, "double"

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v6}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->s1()V

    return-void
.end method

.method public registerPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x436

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x44a

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public final s1()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_0

    new-instance v1, Ljt0;

    invoke-direct {v1, p0}, Ljt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    new-instance v1, Lut0;

    invoke-direct {v1, p0}, Lut0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setParentVisible(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->G:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->T()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->l:Lcom/transsion/onlinevideo/widgets/OnlineTopicRecyclerView;

    if-eqz v0, :cond_2

    new-instance v1, Ltt0;

    invoke-direct {v1, p0}, Ltt0;-><init>(Lcom/transsion/onlinevideo/channel/ChannelFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n:Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/MovieTopicAdapter;->u(Z)V

    :cond_4
    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->r1()V

    :cond_5
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setUserVisibleHint(Z)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->n1()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getTopicLayout()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getSort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, p1, v0, v1, v2}, Lc06;->n(ZIIILjava/lang/String;)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->x:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->z:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p0, :cond_0

    const-string p0, "vd_ott_nodata_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unRegisterPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->unRegisterPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x436

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x44a

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public userLogout()V
    .locals 8

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->userLogout()V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "ChannelFragment"

    const-string v1, "user Logout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->m:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v3

    iget-object v0, p0, Lcom/transsion/onlinevideo/channel/ChannelFragment;->p:Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/channel/ChannelFragment;->F0(I)I

    move-result v5

    const/16 v6, 0x14

    const-string v7, "other"

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method
