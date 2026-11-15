.class public Lcom/transsion/magicvideo/fragments/VideoMainFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/view/View;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public J:Lcom/transsion/widgets/BubbleTextView;

.field public K:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public L:Landroid/view/View;

.field public M:Landroid/view/View;

.field public N:Landroid/view/View;

.field public O:Landroid/view/View;

.field public P:Landroid/view/View;

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public V:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public W:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

.field public X:Z

.field public Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

.field public Z:Landroidx/lifecycle/Observer;

.field public a0:Landroidx/lifecycle/Observer;

.field public b0:Landroidx/lifecycle/Observer;

.field public c0:Lcom/transsion/WindowInfoViewModel;

.field public d0:I

.field public e0:I

.field public final f0:F

.field public g0:Landroid/widget/FrameLayout;

.field public h0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public i0:Landroid/widget/ImageView;

.field public j0:Landroid/widget/FrameLayout;

.field public k0:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public l:Z

.field public l0:Landroid/widget/ImageView;

.field public m:Lcom/transsion/widgets/CustomTabLayoutNew;

.field public m0:Landroid/widget/PopupWindow;

.field public n:Landroidx/viewpager2/widget/ViewPager2;

.field public n0:Lkpb;

.field public o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

.field public o0:Z

.field public p:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public final p0:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

.field public q:Landroid/view/View;

.field public q0:Landroid/animation/AnimatorSet;

.field public r:Landroid/widget/ImageView;

.field public r0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public s:Landroid/widget/ImageView;

.field public s0:J

.field public t:[Ljava/lang/String;

.field public t0:Z

.field public u:Ljava/util/List;

.field public final u0:Ljava/lang/Runnable;

.field public v:Landroidx/recyclerview/widget/RecyclerView;

.field public final v0:Ljava/lang/Runnable;

.field public w:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

.field public final w0:Ljava/lang/Runnable;

.field public final x:Ljava/util/ArrayList;

.field public x0:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

.field public y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->R:I

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->f0:F

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$c;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p0:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$f;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s0:J

    new-instance v0, Lnsb;

    invoke-direct {v0, p0}, Lnsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u0:Ljava/lang/Runnable;

    new-instance v0, Losb;

    invoke-direct {v0, p0}, Losb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v0:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$7;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$7;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->w0:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$g;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$g;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x0:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->G1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->D1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Lwoc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->E1(Lwoc;)V

    return-void
.end method

.method private synthetic D1(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoRecordLiveData onChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMainFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic E1(Lwoc;)V
    .locals 2

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->d0:I

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->e0:I

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    return p0
.end method

.method private synthetic F1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->c1()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l0:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "show_video_main_collect_point"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic G0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->H:I

    return p0
.end method

.method private synthetic G1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->e1()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->i0:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string p1, "show_video_history_point"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic H0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->I:I

    return p0
.end method

.method public static bridge synthetic I0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->w0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic J0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic K0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Lcom/transsion/playercommon/adapter/RtlPageAdapter2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    return-object p0
.end method

.method public static bridge synthetic L0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method private L1()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->t(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->R:I

    :cond_2
    return-void
.end method

.method public static bridge synthetic M0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->H:I

    return-void
.end method

.method public static bridge synthetic N0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->I:I

    return-void
.end method

.method private N1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v1, "vd_ad_icon_show"

    invoke-static {v0, p0, v1}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic O0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->T1()V

    return-void
.end method

.method public static bridge synthetic P0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->U1(Z)V

    return-void
.end method

.method private P1()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->R:I

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
    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S:Z

    return p0
.end method

.method public static bridge synthetic Q0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->V1(Z)V

    return-void
.end method

.method public static bridge synthetic R0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Z1(Z)V

    return-void
.end method

.method public static bridge synthetic S0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a2()V

    return-void
.end method

.method public static synthetic T0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method private T1()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->w0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->w0:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runMusicProgressUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoMainFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-void
.end method

.method public static synthetic U0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static synthetic V0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private V1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic W0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic X0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    return-object p0
.end method

.method private X1()Z
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

.method private a1()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private b2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Ljsb;

    invoke-direct {v2, p0}, Ljsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-static {v1, v0, v2}, Ladc;->s(Landroidx/viewpager2/widget/ViewPager2;ILjava/lang/Runnable;)V

    return-void
.end method

.method private c2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Ljsb;

    invoke-direct {v1, p0}, Ljsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-static {v0, v1}, Ladc;->u(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method private e2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lqha;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->N1()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->w1(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f2()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    instance-of v1, v0, Lcom/transsion/playercommon/activities/BasePermissionActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->isHaveFilePermission()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lt08;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->f1()V

    :cond_3
    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->O:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v5, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v1

    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->N:Landroid/view/View;

    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v5, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v5, v1

    :goto_6
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->L:Landroid/view/View;

    if-eqz p0, :cond_c

    if-nez v0, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    move v1, v4

    :cond_b
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->z1()V

    return-void
.end method

.method private g1()V
    .locals 4

    new-instance v0, Lwsb;

    invoke-direct {v0, p0}, Lwsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    new-instance v0, Lxsb;

    invoke-direct {v0, p0}, Lxsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$e;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->F3(I)Lcom/transsion/magicvideo/fragments/VideosFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p0:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/magicvideo/fragments/FoldersFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/FoldersFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p0:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance v3, Lysb;

    invoke-direct {v3, p0}, Lysb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-static {v0, v1, v2, v3}, Lrcc;->c(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->R:I

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/viewpager2/widget/ViewPager2;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lzsb;

    invoke-direct {v1, p0}, Lzsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n1(F)V

    return-void
.end method

.method public static synthetic i0(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u1(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->J1(Landroid/view/View;)V

    return-void
.end method

.method private j1()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->setNames(Ljava/util/List;)V

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_media_tab_all:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->ic_media_tab_play_list:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$drawable;->ic_media_tab_folder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$drawable;->ic_media_tab_short_video:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/transsion/magicvideo/R$drawable;->ic_media_tab_whatsapp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setIcons(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->isFirstLevelTab(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    new-instance v1, Lrsb;

    invoke-direct {v1, p0}, Lrsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a2()V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m1(Landroid/view/View;)V

    return-void
.end method

.method private k2()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->D:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->C:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->G:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    sget-object v4, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/16 v4, 0x8

    if-nez v1, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lpp3;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->E:Landroid/view/View;

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->D:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/magicvideo/R$string;->video:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->G:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v0, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v0, v2

    :goto_6
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    move v5, v3

    :goto_7
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g0:Landroid/widget/FrameLayout;

    if-nez v0, :cond_b

    sget-boolean v5, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-eqz v5, :cond_a

    goto :goto_8

    :cond_a
    move v5, v3

    goto :goto_9

    :cond_b
    :goto_8
    move v5, v4

    :goto_9
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    if-nez v0, :cond_d

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "mmkv_key_show_music_theme_icon"

    invoke-virtual {v5, v6, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_a

    :cond_c
    move v3, v4

    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_d
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_b
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->P:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-eqz v4, :cond_f

    const/high16 v4, 0x41900000    # 18.0f

    goto :goto_c

    :cond_f
    const/high16 v4, 0x41c00000    # 24.0f

    :goto_c
    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->P:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->e2()V

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->U1(Z)V

    :cond_10
    :goto_d
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o1()V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p1(Z)V

    return-void
.end method

.method public static synthetic q0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q1()V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->I1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->H1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;ZIJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l1(ZIJ)V

    return-void
.end method

.method public static synthetic u1(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 3

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ltpb;->O(ZIZ)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synthetic v0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->C1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->A1()V

    return-void
.end method

.method public static synthetic w1(Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    invoke-virtual {p0}, Ltpb;->L()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->L1()V

    return-void
.end method

.method public static synthetic x1(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vd_format"

    invoke-virtual {v0, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "vd_video_file"

    const-wide v2, 0xd91af27340L

    invoke-static {v0, v1, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y1(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static synthetic z0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y1(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final synthetic A1()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j0:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->visha_change_layout_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x800055

    invoke-static {v0, v1, v2}, Lea7;->p(Landroid/view/View;Ljava/lang/String;I)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m0:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u0:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCollectLayoutGuideTip error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "show_video_main_collect_tips"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic B1(Ljava/util/List;)V
    .locals 0

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l2(Z)V

    :goto_0
    return-void
.end method

.method public final synthetic C1(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllVideoPlayHistoryLiveData onChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMainFragment"

    invoke-static {v1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->d1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g2(Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic H1(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpToPrivacyRoomOnLongClick(Landroid/content/Context;II)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->D:Landroid/view/View;

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    return v1
.end method

.method public final synthetic I1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l2(Z)V

    :goto_0
    return-void
.end method

.method public final synthetic J1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->selectAll(Z)V

    return-void
.end method

.method public K1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    new-instance v0, Ljtb;

    invoke-direct {v0}, Ljtb;-><init>()V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lksb;

    invoke-direct {v0}, Lksb;-><init>()V

    new-instance v1, Llsb;

    invoke-direct {v1}, Llsb;-><init>()V

    invoke-virtual {p0, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final M1()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    const-string v2, "vd_page_show"

    const-wide/16 v3, 0x246c

    const/4 v5, 0x0

    invoke-static {v5, v2, v3, v4}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lq16;->f(Landroid/content/Context;)V

    iput-wide v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s0:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final O1()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->T:Z

    goto :goto_1

    :cond_1
    invoke-static {}, Li06;->d()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->T:Z

    :goto_1
    return-void
.end method

.method public final Q1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->w:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lssb;

    invoke-direct {v1, p0}, Lssb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final R1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b0:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Latb;

    invoke-direct {v0, p0}, Latb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b0:Landroidx/lifecycle/Observer;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->W:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final S1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->W:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->d1(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final U1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j0:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "show_video_main_collect_point"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l0:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final W1()V
    .locals 2

    new-instance v0, Lvsb;

    invoke-direct {v0, p0}, Lvsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a0:Landroidx/lifecycle/Observer;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/MainViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final Y0(Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Z1(Z)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateVideoListEditMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoMainFragment"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "translationY"

    const-string v5, "scaleY"

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-eqz v7, :cond_2

    iget-boolean v8, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X:Z

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v8, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    new-array v9, v2, [F

    fill-array-data v9, :array_0

    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v7

    iget-object v8, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    neg-int v5, v5

    int-to-float v5, v5

    new-array v2, v2, [F

    aput v6, v2, v1

    aput v5, v2, v0

    invoke-static {v8, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-boolean v8, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X:Z

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setPivotY(F)V

    iget-object v6, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    neg-int v6, v7

    int-to-float v6, v6

    iget-object v8, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    new-array v2, v2, [F

    aput v6, v2, v1

    aput v8, v2, v0

    invoke-static {v5, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Ltsb;

    invoke-direct {v0, p0, p1, v7}, Ltsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;ZI)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$d;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;ZLandroid/view/Choreographer$FrameCallback;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final Y1(J)V
    .locals 3

    invoke-static {}, Lydc;->e()Z

    move-result v0

    const-string v1, "show_video_main_collect_tips"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final Z0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v1, v1, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;

    if-eqz v1, :cond_1

    return-void

    :cond_2
    new-instance v0, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/WhatsAppVideoFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvSimpleTouchListener(Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p0:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mToolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setAppBar(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final Z1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final a2()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_3

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "playListFarvoriteRedSpot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t0:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v3, "redshots_recently_added"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {p0, v1, v1, v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->showBadgeView(IZI)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->showBadgeView(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b1()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m0:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCollectLayoutGuideTip error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoMainFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final c1()V
    .locals 2

    new-instance v0, Lkpb;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkpb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n0:Lkpb;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string p0, "vd_page_layout_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final d1(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of p0, p1, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, p0

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final d2(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->convertToPlayVideoData(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setShowPicInPic(Z)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->setNeedRecordVideoStates(Z)V

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->d0()I

    move-result p1

    if-eqz p1, :cond_0

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playPosition:J

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startOpenVideo "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VideoMainFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->isAlertWindowPermissionGranted()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x425

    if-eq p1, v0, :cond_c

    const/16 v0, 0x439

    if-eq p1, v0, :cond_b

    const/16 v0, 0x43f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/16 v0, 0x447

    const/4 v2, 0x1

    if-eq p1, v0, :cond_9

    const/16 v0, 0x473

    if-eq p1, v0, :cond_8

    const/16 v0, 0x485

    if-eq p1, v0, :cond_6

    const/16 v0, 0x487

    if-eq p1, v0, :cond_5

    const/16 v0, 0x489

    if-eq p1, v0, :cond_3

    const/16 v0, 0x498

    if-eq p1, v0, :cond_1

    const/16 p2, 0x4a0

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j2(Z)V

    goto/16 :goto_1

    :cond_1
    aget-object p1, p2, v1

    if-eqz p1, :cond_d

    instance-of p2, p1, Ljava/lang/Long;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_d

    :cond_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y1(J)V

    goto/16 :goto_1

    :cond_3
    :try_start_0
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showShuffleMap:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 p1, 0x3

    if-ne v1, p1, :cond_d

    :cond_4
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    if-ne p1, v1, :cond_d

    const-string p1, "video"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p2, :cond_d

    if-lez p1, :cond_d

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_d

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    goto :goto_1

    :cond_6
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_START:I

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideShuffleBtn()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->showShuffleBtn()V

    goto :goto_1

    :cond_8
    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_1

    :cond_9
    iput-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t0:Z

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-eqz p1, :cond_d

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l2(Z)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->f2()V

    goto :goto_1

    :cond_c
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a2()V

    :catch_0
    :cond_d
    :goto_1
    return-void
.end method

.method public final e1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->F3(I)Lcom/transsion/magicvideo/fragments/VideosFragment;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "history_red_point_show"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Li06;->b()V

    return-void
.end method

.method public f1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->L:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/transsion/magicvideo/R$id;->video_main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->L:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->text_no_videos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v2, Lpp3;->t:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/magicvideo/R$string;->permission_all_file_1_pre:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/magicvideo/R$string;->permission_all_file_1:I

    goto :goto_0

    :cond_1
    sget-boolean v2, Lpp3;->c:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/transsion/magicvideo/R$string;->permission_write_extenal_1_pre:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/transsion/magicvideo/R$string;->permission_write_extenal_1:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->L:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->add_video_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/magicvideo/R$string;->permission_go:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lmsb;

    invoke-direct {v1, p0}, Lmsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public final g2(Ljava/util/ArrayList;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j2(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHistoryData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMainFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltpb;->D(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l2(Z)V

    return-void
.end method

.method public final h1()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q1()V

    return-void
.end method

.method public final h2()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/magicvideo/fragments/VideoMainFragment$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void
.end method

.method public final i1(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_history_clear:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->z:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_history_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->A:Landroid/view/View;

    new-instance v1, Lusb;

    invoke-direct {v1, p0}, Lusb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->z:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->h2()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideoMainFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    new-instance v0, Lctb;

    invoke-direct {v0, p0}, Lctb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public final i2()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkv_key_show_music_theme_icon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x43f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x447

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x473

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x487

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x485

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x489

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x498

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x4a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x456

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j2(Z)V
    .locals 7

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v4, :cond_2

    iget v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v5, v6, :cond_2

    iget-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    if-le v0, v5, :cond_2

    invoke-virtual {v4, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final k1(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$id;->show_video_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public final synthetic l1(ZIJ)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-eqz p3, :cond_0

    iget-boolean p4, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    neg-int p1, p2

    int-to-float p1, p1

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method

.method public final l2(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M:Landroid/view/View;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o0:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o0:Z

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X:Z

    if-ne v2, p1, :cond_3

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X:Z

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->top_history_view_ll:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->i1(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o0:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o0:Z

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-eqz v2, :cond_7

    if-eqz p1, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/transsion/playercommon/videomodel/MainViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNeedInitTopHistoryView: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o0:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoMainFragment"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public loadData(ZZ)V
    .locals 2

    const-string v0, "VideoMainFragment"

    const-string v1, "loadData queryAllVideoStates "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lpsb;

    invoke-direct {p2}, Lpsb;-><init>()V

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

    new-instance p2, Lqsb;

    invoke-direct {p2, p0}, Lqsb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic m1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lt08;->l(Landroid/app/Activity;)V

    return-void
.end method

.method public markBottomTabPageShow()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->markBottomTabPageShow()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v0, "vd_page_show"

    const-wide/16 v1, 0x246c

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_0

    const-string v0, "vd_page_show"

    invoke-static {p1, v0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "vd_tab_history"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K1()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mScreenType:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string v0, "vd_tab_history"

    invoke-static {p1, v0}, Lr06;->d(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->N1()V

    :cond_1
    return-void
.end method

.method public final synthetic n1(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->V1(Z)V

    return-void
.end method

.method public final synthetic o1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/adapter/RtlPageAdapter2;->t(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_music_theme_menu:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v1, "com.transsion.tools.activities.SkinsPreviewActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lvha;->f()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v3, "skin_list"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "skin_index"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x7e5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "mmkv_key_show_music_theme_icon"

    invoke-virtual {p0, p1, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_search:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSearchListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;

    if-eqz p0, :cond_3

    invoke-interface {p0, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$e;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    if-ne v0, v1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, v2, p1, v3}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->startEditMode(ZIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_ad_tip_menu:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-static {p1, v2, v0}, Lcom/transsion/playercommon/router/RouterUtils;->jumpFromAdViewResult(Landroid/content/Context;ZLcom/transsion/dbdata/beans/adsbean/AdItemBean;)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getJumpLink()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->getId()I

    move-result p0

    const-string v0, "vd_ad_icon_cl"

    invoke-static {p1, p0, v0}, La9;->b(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a1()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b2()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->R:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S:Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$array;->video_tab_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t:[Ljava/lang/String;

    const-class p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->w:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->i()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lgtb;

    invoke-direct {v0, p0}, Lgtb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-class p1, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->W:Lcom/transsion/playercommon/videomodel/VideoDataListModel;

    new-instance p1, Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->y:Lcom/transsion/magicvideo/adapter/TopHistoryAdapter;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->h1()V

    const-class p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    const-class p1, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/WindowInfoViewModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->c0:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lhtb;

    invoke-direct {v0, p0}, Lhtb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerBottomBarVisibleChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->o:Lcom/transsion/playercommon/adapter/RtlPageAdapter2;

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_1
    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Z:Landroidx/lifecycle/Observer;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->v0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n0:Lkpb;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n0:Lkpb;

    :cond_4
    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M:Landroid/view/View;

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->B:Landroid/view/View;

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->J:Lcom/transsion/widgets/BubbleTextView;

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b0:Landroidx/lifecycle/Observer;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v2, v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setEditModeListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setBounceListener(Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onFinishRequestPermission(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onFinishRequestPermission(IZ)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->cast(Landroidx/fragment/app/Fragment;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFinishRequestPermission(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->k2()V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/magicvideo/R$layout;->video_fragment_main_new:I

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->T:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b1()V

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x0:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v2(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l:Z

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l2(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->markBottomTabPageShow()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a2()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->f2()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->O1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->i2()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g0:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->G:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-eqz v2, :cond_3

    :cond_2
    const/16 v1, 0x8

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x0:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D1(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->P1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->realignNestedViewPagersIfNeeded()V

    :cond_5
    return-void
.end method

.method public onSelectInViewPage()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->O1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M1()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->onVisibleChanged(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectInViewPage()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onStop()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S:Z

    :cond_0
    return-void
.end method

.method public onUnSelectInViewPage()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->onVisibleChanged(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onUnSelectInViewPage()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpp3;->g(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->d0:I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lpp3;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->e0:I

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->d0:I

    invoke-virtual {p1, v2, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->R1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S1()V

    sget v0, Lcom/transsion/magicvideo/R$id;->video_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->V:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/magicvideo/R$id;->video_main_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->N:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->top_menu_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->O:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->cl_drag_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->U:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/magicvideo/R$id;->tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomTabLayoutNew;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->k1(Landroid/view/View;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "mmkv_key_show_music_theme_icon"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_music_theme_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/transsion/magicvideo/R$id;->iv_ad_tip_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lxdc;->d()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y:Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->app_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->C:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->D:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_logo_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->E:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_bubble:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BubbleTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->J:Lcom/transsion/widgets/BubbleTextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->view_padding_start:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->P:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_collect_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j0:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_video_collect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->k0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_video_collect_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->l0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->k0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_2

    new-instance v2, Lha1;

    new-instance v4, Ldtb;

    invoke-direct {v4, p0}, Ldtb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-direct {v2, v4}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v0, Lcom/transsion/magicvideo/R$id;->ll_history_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g0:Landroid/widget/FrameLayout;

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    sget v0, Lcom/transsion/magicvideo/R$id;->iv_video_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->h0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_history_main_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->i0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "show_video_history_point"

    invoke-static {v0, v2, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->i0:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->h0:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_5

    new-instance v2, Lha1;

    new-instance v4, Letb;

    invoke-direct {v4, p0}, Letb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-direct {v2, v4}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->k2()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g1()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->j1()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "need_personal_theme_guide"

    invoke-static {v0, v2, v3}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "skin_bubble_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->W1()V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    sget-boolean p1, Lpp3;->p:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->D:Landroid/view/View;

    new-instance p2, Lftb;

    invoke-direct {p2, p0}, Lftb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->E:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->E:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->E:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :goto_1
    return-void
.end method

.method public onVisibleChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onVisibleChanged(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic p1(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Z0()V

    :cond_0
    return-void
.end method

.method public final synthetic q1()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Likc;->f(Z)Z

    move-result v0

    new-instance v1, Lbtb;

    invoke-direct {v1, p0, v0}, Lbtb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Z)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic r1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->e1()V

    return-void
.end method

.method public realignNestedViewPagersIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->X1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->P1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->a1()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->S:Z

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->c2()V

    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 2

    const-string v0, "VideoMainFragment"

    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->refresh()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseWhenDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->releaseWhenDestroyView()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q0:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public final synthetic s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p3, p1}, Lp06;->u(II)V

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->d2(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    sget-object p0, Lo06;->f:Ljava/lang/String;

    invoke-static {p0}, Lo06;->e(Ljava/lang/String;)V

    invoke-static {}, Li06;->c()V

    return-void
.end method

.method public setHiddenChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setHiddenChanged(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->b1()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast v1, Lcom/transsion/playercommon/fragments/BaseFragment;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setParentVisible(Z)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->d4()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->O1()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M1()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->onVisibleChanged(Z)V

    return-void
.end method

.method public showSelectedTab(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSelectedTab(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public showVishaQuestionnaire()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsHide:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->c()Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/playercommon/tranquestion/VishaQuestionnaireManager;->p(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startEditMode(ZIZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startEditMode(ZIZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEditMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Q:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->F:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->M:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->p:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v2, 0x8

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->G:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->V1(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lcom/transsion/widgets/CustomTabLayoutNew;->setTabChildEnable(Z)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->h2()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->q:Landroid/view/View;

    if-eqz p1, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->k2()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->d(ZIZ)V

    :cond_6
    if-nez p1, :cond_8

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->u:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/fragments/BaseFragment;

    instance-of p3, p2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    if-eqz p3, :cond_7

    check-cast p2, Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-virtual {p2, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    :cond_7
    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/magicvideo/R$string;->video:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance p3, Litb;

    invoke-direct {p3, p0}, Litb;-><init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateAppBarLayoutBehavior(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->Y0(Z)V

    :cond_a
    return-void
.end method

.method public final synthetic t1(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->n:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabAt(I)Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->selectTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    return-void
.end method

.method public final synthetic v1(Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData queryAllVideoStates "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->g2(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->T:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->O1()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->T:Z

    :cond_0
    return-void
.end method

.method public final synthetic z1()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->m0:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideCollectLayoutGuideTip error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoMainFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
