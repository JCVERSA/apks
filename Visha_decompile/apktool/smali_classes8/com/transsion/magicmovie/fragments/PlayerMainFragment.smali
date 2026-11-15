.class public Lcom/transsion/magicmovie/fragments/PlayerMainFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicmovie/fragments/PlayerMainFragment$e;
    }
.end annotation


# static fields
.field public static V:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:J

.field public H:Z

.field public I:Lcom/transsion/sniffer_load/a;

.field public J:Z

.field public K:Z

.field public L:Ljava/lang/Runnable;

.field public M:I

.field public N:I

.field public O:Ljava/lang/String;

.field public P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

.field public Q:I

.field public R:Z

.field public final S:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

.field public final T:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

.field public U:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public l:Landroidx/viewpager2/widget/ViewPager2;

.field public m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

.field public n:I

.field public o:Ljava/util/List;

.field public p:Landroid/view/View;

.field public q:Lcom/transsion/playercommon/widgets/SearchFileView;

.field public r:Lcom/transsion/playercommon/widgets/SearchFileView$f;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Landroid/view/View;

.field public w:I

.field public x:I

.field public y:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->n:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->w:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->x:I

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->J:Z

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->K:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->M:I

    iput v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Q:I

    new-instance v0, Lza8;

    invoke-direct {v0, p0}, Lza8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->S:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

    new-instance v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->T:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    new-instance v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$d;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->U:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic B0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->u(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private K0()V
    .locals 4

    new-instance v0, Lcom/transsion/playercommon/adapter/PagerAdapter2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/playercommon/adapter/PagerAdapter2;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->v(Lcom/transsion/playercommon/adapter/PagerAdapter2$a;)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->U:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance v3, Lxa8;

    invoke-direct {v3, p0}, Lxa8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-static {v0, v1, v2, v3}, Lrcc;->c(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget v0, v0, Lcom/transsion/data/Repository;->mainTab:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getFromSource()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g1(IZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->t(I)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-boolean v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->z:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->x:I

    if-lt v0, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->changeTabOperationBarItem(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Q:I

    :cond_3
    return-void
.end method

.method public static synthetic P(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->N0()Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->T0()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R0()Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P0()Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S0(I)V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v1, 0x44d

    invoke-virtual {v0, v1, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->V0(I)V

    return-void
.end method

.method public static synthetic U(I)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->S0(I)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Q0()Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->W0()V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->U0()V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->M0()Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->h1()V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m1()V

    return-void
.end method

.method public static synthetic b0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->O0()Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic d0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->w:I

    return p0
.end method

.method public static bridge synthetic e0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic f0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->z:Z

    return p0
.end method

.method public static bridge synthetic g0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/videomodel/MainViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->y:Lcom/transsion/playercommon/videomodel/MainViewModel;

    return-object p0
.end method

.method public static bridge synthetic h0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->u:Z

    return p0
.end method

.method public static bridge synthetic i0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->x:I

    return p0
.end method

.method public static bridge synthetic j0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->n:I

    return p0
.end method

.method public static bridge synthetic k0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/widgets/SearchFileView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    return-object p0
.end method

.method public static bridge synthetic l0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/adapter/PagerAdapter2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    return-object p0
.end method

.method public static bridge synthetic m0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->A:Z

    return-void
.end method

.method public static bridge synthetic n0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->t:Z

    return-void
.end method

.method public static bridge synthetic o0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->s:I

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->n:I

    return-void
.end method

.method public static bridge synthetic q0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)I
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    return-void
.end method

.method public static bridge synthetic t0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->d1(I)V

    return-void
.end method

.method public static bridge synthetic u0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->n1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static bridge synthetic v0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Lcom/transsion/dbdata/beans/media/MediaItem;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o1(Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic z0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public final C0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->t(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final D0()V
    .locals 4

    iget v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->M:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->N:I

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->O:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->M:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k1(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final E0()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildMainTabFactory isOSVersionPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lydc;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isSupportCloudDisk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lzz0;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerMainFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Leb8;

    invoke-direct {v1, p0}, Leb8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lfb8;

    invoke-direct {v1, p0}, Lfb8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lgb8;

    invoke-direct {v1, p0}, Lgb8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lpp3;->w:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lzz0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lhb8;

    invoke-direct {v1, p0}, Lhb8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-boolean v1, Lpp3;->k:Z

    if-eqz v1, :cond_1

    new-instance v1, Lva8;

    invoke-direct {v1, p0}, Lva8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    new-instance v1, Lwa8;

    invoke-direct {v1, p0}, Lwa8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;

    invoke-direct {v1, p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$c;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    return-void
.end method

.method public F0()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final H0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/playercommon/adapter/PagerAdapter2$a;->getCount()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public I0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->C:Z

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "need_online_guide"

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public J0()V
    .locals 3

    sget-boolean v0, Lpp3;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->D:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->p:Landroid/view/View;

    sget v1, Lcom/transsion/magicmovie/R$id;->download_bubble_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    sget v1, Lcom/transsion/magicmovie/R$id;->tv_bubble:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BubbleTextView;

    sget v1, Lcom/transsion/magicmovie/R$string;->online_bubble_guide:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$6;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Lcom/transsion/widgets/BubbleTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->C:Z

    const-string p0, "dl_bubble_show"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    if-eqz p0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public L0()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->A:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->B:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->K:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->peekConsumeBack()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public final synthetic M0()Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->S:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setSearchListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;)V

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->T:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v1, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    return-object v0
.end method

.method public final synthetic N0()Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 3

    new-instance v0, Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/AudioMainFragment;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/audio/fragments/AudioMainFragment;

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->S:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setSearchListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;)V

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->T:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mMenuShowListener:Lcom/transsion/playercommon/fragments/BaseFragment$d;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setMenuShowListener(Lcom/transsion/playercommon/fragments/BaseFragment$d;)V

    return-object v0
.end method

.method public final synthetic O0()Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 2

    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/onlinevideo/onlinehomefragment"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->z:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/playercommon/fragments/PlaceholderFragment;

    invoke-direct {v0}, Lcom/transsion/playercommon/fragments/PlaceholderFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic P0()Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 3

    invoke-static {}, Lse;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lya8;

    invoke-direct {v1}, Lya8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {v0}, Lcom/transsion/cloud/fragment/CloudFragment;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->S:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setSearchListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;)V

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->T:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    instance-of v1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->checkFootOperationBar()V

    :cond_0
    return-object v0
.end method

.method public final synthetic Q0()Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->T:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v1, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    return-object v0
.end method

.method public final synthetic R0()Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 1

    new-instance v0, Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/ToolsFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/tools/fragments/ToolsFragment;->D1(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/tools/fragments/ToolsFragment;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic T0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    invoke-virtual {v1}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->C0()V

    return-void
.end method

.method public final synthetic U0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->t(I)V

    :cond_0
    return-void
.end method

.method public final synthetic V0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->y:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->p1(I)V

    invoke-static {p1}, Lp06;->J(I)V

    return-void
.end method

.method public final W0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Q:I

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->C0()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->e1()V

    return-void
.end method

.method public final X0(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "vd_more_tab_cl"

    goto :goto_0

    :cond_1
    const-string p0, "vd_download_tab_cl"

    goto :goto_0

    :cond_2
    const-string p0, "vd_audio_tab_cl"

    goto :goto_0

    :cond_3
    const-string p0, "vd_video_tab_cl"

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    const-wide/16 v0, 0x246c

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method

.method public final Y0(IZ)V
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "vd_ott_cl"

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lc06;->l(I)V

    :cond_2
    return-void
.end method

.method public final Z0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Q:I

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_3
    :goto_2
    iget-boolean p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    return p0
.end method

.method public final a1()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onBackNavigationStateChanged()V

    :cond_0
    return-void
.end method

.method public b1()V
    .locals 2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x45a

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public c1(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFootOptBarClickListener index\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->n:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->X0(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    const-string v0, "tabcl"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g1(IZLjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result v0

    if-ge p1, v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->refresh()V

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Y0(IZ)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Y0(IZ)V

    :cond_5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G:J

    return-void
.end method

.method public final d1(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->k(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->j(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x423

    if-eq p1, v0, :cond_a

    const/16 v0, 0x428

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_9

    const/16 v0, 0x449

    if-eq p1, v0, :cond_8

    const/16 v0, 0x44c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x468

    if-eq p1, v0, :cond_2

    const/16 v0, 0x476

    if-eq p1, v0, :cond_1

    const/16 p2, 0x477

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->getItemCount()I

    move-result p1

    if-lez p1, :cond_b

    iget-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->J:Z

    if-nez p1, :cond_b

    iput-boolean v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->J:Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Ldb8;

    invoke-direct {p2, p0}, Ldb8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_1
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->B:Z

    goto/16 :goto_2

    :cond_2
    iput-boolean v3, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->K:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    goto/16 :goto_2

    :cond_3
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-direct {p0, v3}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcb8;

    invoke-direct {v1, p1}, Lcb8;-><init>(I)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_4

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x3e8

    :goto_0
    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const/16 p2, 0x12

    if-ne p1, p2, :cond_6

    move p1, v2

    goto :goto_1

    :cond_6
    const/16 p2, 0x1d

    if-ne p1, p2, :cond_7

    const/4 p1, 0x7

    goto :goto_1

    :cond_7
    move p1, v3

    :goto_1
    iget-object p2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2, v3}, Lcom/transsion/playercommon/activities/BaseActivity;->changeTabOperationBarItem(I)V

    const-string p2, "widget_audio_tab"

    invoke-virtual {p0, v2, p1, p2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k1(IILjava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v2, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v3}, Lcom/transsion/playercommon/activities/BaseActivity;->changeTabOperationBarItem(I)V

    invoke-virtual {p0, v2, v2, v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k1(IILjava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v3, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v3}, Lcom/transsion/playercommon/activities/BaseActivity;->changeTabOperationBarItem(I)V

    invoke-virtual {p0, v3, v3, v1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k1(IILjava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->u:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p2, 0x424

    invoke-virtual {p1, p2, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "go_download_tab"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public final e1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->realignNestedViewPagersIfNeeded()V

    :cond_1
    return-void
.end method

.method public f1()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->s:I

    iget-boolean v3, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->t:Z

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startDragMode(ZIZ)V

    :cond_1
    iput-boolean v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->B:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    :cond_2
    return-void
.end method

.method public g1(IZLjava/lang/String;Z)V
    .locals 1

    iget-object p4, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurrentItem: index = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "PlayerMainFragment"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result p4

    if-lt p1, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->setFromSource(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final h1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->E0()V

    invoke-direct {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->K0()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->D0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i1()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v0, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->TABLE:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public j1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lydc;->b:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->u:Z

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "need_download_guide"

    invoke-static {v1, v2, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->E:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/sniffer_load/a;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/a;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->I:Lcom/transsion/sniffer_load/a;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/a;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/sniffer_load/DownloadGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public k1(IILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->x:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->z:Z

    if-nez v0, :cond_0

    iget p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->w:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->E:Z

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    if-nez v0, :cond_1

    iput p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->M:I

    iput p2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->N:I

    iput-object p3, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->O:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result v1

    if-lt p1, v1, :cond_3

    :cond_2
    move p1, v0

    :cond_3
    invoke-virtual {p0, p1, v0, p3, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g1(IZLjava/lang/String;Z)V

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->z:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->x:I

    if-le p1, v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_4
    move v0, p1

    :goto_0
    invoke-virtual {p3, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->changeTabOperationBarItem(I)V

    invoke-direct {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSelectedTab(I)V

    :cond_5
    return-void
.end method

.method public final l1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lua8;

    invoke-direct {v2, p0}, Lua8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-static {v1, v0, v2}, Ladc;->s(Landroidx/viewpager2/widget/ViewPager2;ILjava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    return-void
.end method

.method public final m1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lua8;

    invoke-direct {v1, p0}, Lua8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-static {v0, v1}, Ladc;->u(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    return-void
.end method

.method public final n1(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x15

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "launch_audio_player_activity_from_audio_list"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public needAnimation()Z
    .locals 1

    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->K:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o1(Lcom/transsion/dbdata/beans/media/MediaItem;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setShowPicInPic(Z)V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setForceResetPlay(Z)V

    iput p2, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isAlertWindowPermissionGranted()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->A:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    sget-boolean v2, Lpp3;->k:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    iget v3, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->w:I

    if-ne v2, v3, :cond_2

    instance-of v2, v0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->stopEdit()V

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lcom/transsion/cloud/fragment/CloudFragment;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {v0}, Lcom/transsion/cloud/fragment/CloudFragment;->stopEdit()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Lcom/transsion/playercommon/activities/BaseActivity;->enterEditMode(Z)V

    :cond_4
    instance-of v2, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->s:I

    iget-boolean v4, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->t:Z

    invoke-virtual {v0, v3, v2, v4}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startEditMode(ZIZ)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->B:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->f1()V

    return v1

    :cond_7
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    return v1

    :cond_8
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->I:Lcom/transsion/sniffer_load/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->I:Lcom/transsion/sniffer_load/a;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->i1()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l1()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PlayerMainFragment"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/magicmovie/R$attr;->OsBgPrimary:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const-class p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->y:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lw6c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->z:Z

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "need_download_guide"

    invoke-static {p1, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->u:Z

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "need_online_guide"

    invoke-static {p1, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->D:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->p:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->L:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->L:Ljava/lang/Runnable;

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->M:I

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchSelectCallBack(Lcom/transsion/playercommon/widgets/SearchFileView$f;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->r:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/SearchFileView;->onDestroyView()V

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v3, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    invoke-virtual {v3, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setSearchListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;)V

    :cond_3
    invoke-virtual {v2, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setMenuShowListener(Lcom/transsion/playercommon/fragments/BaseFragment$d;)V

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->U:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    :cond_5
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x423

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x428

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x449

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x476

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x477

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->F:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->I0()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setHiddenChanged(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->y:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f()Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchAnimManager exitSearch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->i1()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Z0()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lab8;

    invoke-direct {v0, p0}, Lab8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/magicmovie/R$layout;->player_fragment_main:I

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->multiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->I0()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->onResumed()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->i1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->Z0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m1()V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->i1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->R:Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "onViewCreated"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PlayerMainFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Lcom/transsion/magicmovie/R$id;->show_content_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    new-instance v0, Lbb8;

    invoke-direct {v0, p0}, Lbb8;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->L:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x423

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x428

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x449

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x476

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x477

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public p1(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->showSearchFragment()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->K:Z

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {v0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->getSearchFileView()Lcom/transsion/playercommon/widgets/SearchFileView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/SearchFileView;->multiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchType(I)V

    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->r:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    if-nez p1, :cond_1

    new-instance p1, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$b;

    invoke-direct {p1, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$b;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->r:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->r:Lcom/transsion/playercommon/widgets/SearchFileView$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchSelectCallBack(Lcom/transsion/playercommon/widgets/SearchFileView$f;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->setSearchType(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->q:Lcom/transsion/playercommon/widgets/SearchFileView;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$3;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$3;-><init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->a1()V

    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->H0()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->refresh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public releaseWhenDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->releaseWhenDestroy()V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/adapter/PagerAdapter2;->release()V

    iput-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m:Lcom/transsion/playercommon/adapter/PagerAdapter2;

    :cond_0
    iput-object v1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->P:Lcom/transsion/playercommon/adapter/PagerAdapter2$a;

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public startEditMode(ZIZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->C:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v:Landroid/view/View;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    sget-boolean v1, Lpp3;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->l:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->G0(I)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    instance-of v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startEditMode(ZIZ)V

    :cond_3
    return-void
.end method
