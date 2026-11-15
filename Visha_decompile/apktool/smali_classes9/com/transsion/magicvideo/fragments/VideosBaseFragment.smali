.class public Lcom/transsion/magicvideo/fragments/VideosBaseFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$c;
.implements Lsq3$a;
.implements Lcom/transsion/magicvideo/adapter/BucketDateAdapter$b;
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Landroid/view/View;

.field public D:I

.field public E:Ljava/util/ArrayList;

.field public F:Ljava/util/ArrayList;

.field public G:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

.field public H:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

.field public N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

.field public O:Z

.field public P:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public Q:Z

.field public final R:Ljava/lang/Runnable;

.field public S:Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;

.field public T:Ljava/lang/Runnable;

.field public U:Landroidx/activity/result/ActivityResultLauncher;

.field public final V:Ljava/util/ArrayList;

.field public final W:Landroidx/lifecycle/Observer;

.field public final X:Landroidx/lifecycle/Observer;

.field public Y:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Landroid/widget/TextView;

.field public q:Landroid/view/View;

.field public r:Ljava/util/ArrayList;

.field public s:I

.field public t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

.field public u:Landroid/widget/ImageView;

.field public v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

.field public w:I

.field public x:Landroid/widget/TextView;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->F:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->J:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Q:Z

    new-instance v0, Lx9c;

    invoke-direct {v0, p0}, Lx9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->R:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->T:Ljava/lang/Runnable;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Ly9c;

    invoke-direct {v1, p0}, Ly9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->U:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->V:Ljava/util/ArrayList;

    new-instance v0, Lz9c;

    invoke-direct {v0, p0}, Lz9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->W:Landroidx/lifecycle/Observer;

    new-instance v0, Laac;

    invoke-direct {v0, p0}, Laac;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->X:Landroidx/lifecycle/Observer;

    new-instance v0, Lbac;

    invoke-direct {v0, p0}, Lbac;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Y:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t1()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private B1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottomInMulti:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottom:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private C1()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->y:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->F()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->enableHide(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    if-eqz v3, :cond_3

    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L:Z

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setAllEnable(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic D0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method private addVideoBarShowStateObserver()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->W:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->X:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_0
    return-void
.end method

.method private synthetic c1()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadDataChange()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->i1(Z)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->V0(I)V

    return-void
.end method

.method private getBottomPadding(Z)I
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v3

    iget v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    const/16 v5, 0x73

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    move v4, v5

    goto :goto_4

    :cond_3
    if-nez p1, :cond_6

    iget-boolean v6, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v2

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x48

    goto :goto_4

    :cond_7
    const/16 v4, 0x3c

    :goto_4
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    if-nez v3, :cond_8

    if-nez p1, :cond_8

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p0, :cond_9

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    move v5, v2

    :goto_6
    return v5
.end method

.method public static synthetic h0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->m1(Landroid/os/Parcelable;)V

    return-void
.end method

.method private hideLoadingView()V
    .locals 0

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Z0()V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->c1()V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->h1(Z)V

    return-void
.end method

.method public static synthetic k1(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->o1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->n1(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->b1(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic o1(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "VideosBaseFragment"

    const-string v0, "onRenameSuccess exception"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Luq3;->b(Z)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->d1(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private synthetic p1(I)V
    .locals 1

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeAdapterItemSafely: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideosBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->f1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->X0()V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->e1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->g1(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->a1()V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->k1(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Ljava/lang/String;ZLcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Landroid/util/Pair;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l1(Ljava/lang/String;ZLcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->j1()V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->W0(I)V

    return-void
.end method

.method private y1()V
    .locals 0

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->p1(I)V

    return-void
.end method


# virtual methods
.method public A1(III)V
    .locals 0

    return-void
.end method

.method public final E0(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N0()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v2, Lp9c;

    invoke-direct {v2, p0, p1}, Lp9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lq9c;

    invoke-direct {v1, p0, p1}, Lq9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public F0(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->a0(Ljava/util/ArrayList;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSelectCount "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->D:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":::::"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideosBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public G0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->R(Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z1(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public H0(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

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

.method public I0(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S0()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    const-string p1, "video"

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public J0(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S0()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    const-string p1, "video"

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public K0()V
    .locals 2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->u2(Lcom/transsion/magicvideo/player/VideoPlayManager$c;)V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->c(Lsq3$a;)V

    :cond_0
    return-void
.end method

.method public L0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Q:Z

    return-void
.end method

.method public M0()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->o:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->T0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    return-void

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureListUiBoundIfNeeded rebind, adapterEmpty="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", childCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dataSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideosBaseFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->o:Z

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iput-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->o:Z

    return-void

    :goto_4
    iput-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->o:Z

    throw v0

    :cond_7
    :goto_5
    return-void
.end method

.method public final N0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bottom_bar"

    const-string v4, "id"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public O0()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public P0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_5

    sget v1, Lcom/transsion/magicvideo/R$id;->main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B1()V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xd

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->text_no_videos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$string;->no_videos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "vd_all_video_gd_show"

    const-wide/16 v4, 0x246c

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, v4, v5}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->add_video_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Ll9c;

    invoke-direct {v1, p0}, Ll9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$string;->go_download:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->text_no_videos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->p:Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$string;->no_recently_add:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->text_no_videos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-ne p0, v2, :cond_4

    sget p0, Lcom/transsion/magicvideo/R$string;->no_history:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    if-eq p0, v3, :cond_5

    sget p0, Lcom/transsion/magicvideo/R$string;->no_videos:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public Q0(Landroid/view/View;Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;)V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$id;->pull_damping_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setDistanceToTriggerSync(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v0, Lv9c;

    invoke-direct {v0, p0}, Lv9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBounceListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;->a(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvOverScrollDecorListener(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance p2, Lw9c;

    invoke-direct {p2, p0}, Lw9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnChildScrollUpCallback(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;)V

    return-void
.end method

.method public R0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public S0()Z
    .locals 2

    iget p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public U0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->J:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->J:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->J:Z

    return v1
.end method

.method public final synthetic V0(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E0(I)V

    :cond_0
    return-void
.end method

.method public final synthetic W0(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E0(I)V

    :cond_0
    return-void
.end method

.method public final synthetic X0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    :cond_0
    return-void
.end method

.method public final synthetic Y0(Landroid/view/View;)V
    .locals 3

    const-string p1, "vd_all_video_gd_cl"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {v2, v2, p1, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v2}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    return-void
.end method

.method public final synthetic Z0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public final synthetic a1()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideosBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, Lr9c;

    invoke-direct {v1, p0}, Lr9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z1(I)V

    return-void
.end method

.method public final synthetic b1(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O0()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z1(I)V

    return-void
.end method

.method public final synthetic d1(Landroidx/activity/result/ActivityResult;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "item_click_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "out_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v2, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v3, Lcom/transsion/magicvideo/R$drawable;->ic_delete:I

    sget v4, Lcom/transsion/magicvideo/R$string;->delete:I

    invoke-direct {v2, v3, v4, v0}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v4, 0x2a

    const-string v5, "video"

    const-string v6, "VideosBaseFragment"

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eq v3, v4, :cond_5

    if-ne v0, v7, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->J0(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/data/FileOperateItem;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->I0(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/data/FileOperateItem;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-nez p1, :cond_3

    const-string p0, "mFileOperateUtils is null onMenuItemClick"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iput-boolean v8, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Q:Z

    :cond_4
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0, v2, v5, v8}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-nez p1, :cond_6

    const-string p0, "mFileOperateUtils is null"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-ne v0, v7, :cond_7

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i0()V

    goto :goto_0

    :cond_7
    if-ne v0, v8, :cond_8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vd_more_hide_file_rec"

    const-string v2, "num"

    invoke-static {v0, v2, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->d0(Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v2, v5, v8}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final synthetic e1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public editMode(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModelEditMode(Z)V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initShow(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    new-instance v1, Lk9c;

    invoke-direct {v1, p0}, Lk9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eqz p1, :cond_3

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->R(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v3, v2, :cond_5

    const/4 v3, 0x6

    goto :goto_1

    :cond_5
    const/16 v4, 0xe

    if-ne v3, v4, :cond_6

    const/16 v3, 0xf

    goto :goto_1

    :cond_6
    const/16 v4, 0x10

    if-ne v3, v4, :cond_7

    const/16 v3, 0x11

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->X(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-interface {v0, v2, v3, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->d(ZIZ)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->C:Landroid/view/View;

    if-eqz v0, :cond_c

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->C:Landroid/view/View;

    if-eqz p1, :cond_b

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_b
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_e

    move v3, v1

    goto :goto_3

    :cond_e
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$a;

    invoke-direct {v3, p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz v0, :cond_11

    if-nez p1, :cond_10

    goto :goto_4

    :cond_10
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateBackIcon(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p1, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_14
    return-void
.end method

.method public final synthetic f1(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic g1(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->isAppBarLayoutExpand(II)V

    return-void
.end method

.method public final synthetic h1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_1
    return-void
.end method

.method public final synthetic i1(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_0
    return-void
.end method

.method public isAppBarLayoutExpand(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-lez p2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_1

    if-ge p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setAppBarExpand(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setAppBarExpand(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setAppBarExpand(Z)V

    :goto_0
    return-void
.end method

.method public final synthetic j1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    return-void
.end method

.method public final synthetic l1(Ljava/lang/String;ZLcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Landroid/util/Pair;
    .locals 2

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p4

    invoke-virtual {p4, p1}, Ltpb;->m(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p4

    if-nez p4, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$1;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->T:Ljava/lang/Runnable;

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->T:Ljava/lang/Runnable;

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v0, v1, :cond_2

    invoke-static {p4, p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->copy(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->z(Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_1
    if-ltz p0, :cond_6

    iget-object p2, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_6

    if-ne p2, p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p3, :cond_5

    iget-boolean v0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-nez v0, :cond_5

    iget-object v0, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object p3, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic m1(Landroid/os/Parcelable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final synthetic n1(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 3

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-object v2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->setNewData(Ljava/util/List;)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v2, Lt9c;

    invoke-direct {v2, p0, v0}, Lt9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget p4, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p4, p1, :cond_3

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object p3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->z2(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Luq3;->b(Z)V

    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->getBottomPadding(Z)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v1, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x46

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E0(I)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v4, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/16 v2, 0x24

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v1, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_4
    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewBottomPaddingPx(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance v1, Li9c;

    invoke-direct {v1, p0, p1}, Li9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    :cond_8
    invoke-virtual {p0, v1, v3}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewBottomPaddingPx(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v2, :cond_9

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance v1, Lj9c;

    invoke-direct {v1, p0, p1}, Lj9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void

    :cond_a
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->N:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewNavBottomPadding(Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_b
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initResources()V

    const-class p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->G:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    const-class p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->H:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q1()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S:Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S:Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S:Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S:Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->T:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->S:Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->l:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Y:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnChildScrollUpCallback(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->W:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->X:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_3
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->notifyVideoBarShowStateChange(Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setSelectItems(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    new-instance v1, Ln9c;

    invoke-direct {v1, p0}, Ln9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setOperateFinishListener(Lcom/transsion/playercommon/widgets/AppFootActionBar$c;)V

    iget v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S0()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A:I

    sub-int/2addr v0, v3

    if-eq p1, v0, :cond_1

    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-direct {p1, v0, v3, v4, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, v1, p0, v2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/magicvideo/R$string;->talkback_clear_history:I

    sget v0, Lcom/transsion/magicvideo/R$string;->clear_empty:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A1(III)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->checkItemIndex(I)I

    move-result p1

    if-eq p1, v2, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    const-string v3, "vd_mul_del_cl"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->onItemClick(IZ)V

    goto/16 :goto_2

    :cond_3
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v4}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-direct {p1, v0, v4, v5, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {v3, v2, p0}, Lkz5;->b(Ljava/lang/String;ZI)V

    goto/16 :goto_2

    :cond_4
    iget p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x21

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v4}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-direct {p1, v0, v4, v5, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->v:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {v3, v2, p0}, Lkz5;->b(Ljava/lang/String;ZI)V

    goto/16 :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showRemoveDialog()V

    goto :goto_2

    :cond_7
    const-string p1, "vd_mul_addlist_cl"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lo9c;

    invoke-direct {v0}, Lo9c;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "data_list_ids"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "list_flag"

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->V:Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->g(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    invoke-static {p1}, Lvg9;->h(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v1, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 p1, 0x4df

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->E:Ljava/util/ArrayList;

    iget v4, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    invoke-direct {p1, v0, v3, v4, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    new-instance v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_9

    const-string p0, "video"

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->x(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->V()V

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->editMode(Z)V

    :goto_2
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->K:Z

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mFragmentTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->K:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B1()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->m:Z

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->J:Z

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->m:Z

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->n:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->n:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t1()V

    :cond_1
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->C1(Lcom/transsion/magicvideo/player/VideoPlayManager$c;)V

    iget v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->s:I

    if-eq v1, v0, :cond_2

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    :cond_2
    return-void
.end method

.method public onSelectTabViewPager()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectTabViewPager()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->x1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->needBg:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/magicvideo/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->Y:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_1
    return-void
.end method

.method public onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->addVideoBarShowStateObserver()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->y1()V

    return-void
.end method

.method public q1()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public r1(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lh9c;

    invoke-direct {v2, p0, p2, p3, p1}, Lh9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Ljava/lang/String;ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p3

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p3

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p3

    new-instance v1, Ls9c;

    invoke-direct {v1, p0, p1, v0, p2}, Ls9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;)V

    new-instance p0, Lu9c;

    invoke-direct {p0}, Lu9c;-><init>()V

    invoke-virtual {p3, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public refresh()V
    .locals 2

    const-string v0, "VideosBaseFragment"

    const-string v1, "refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public s1(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lm9c;

    invoke-direct {v0, p0, p1}, Lm9c;-><init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->R(Z)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 0

    return-void
.end method

.method public final t1()V
    .locals 3

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->R:Ljava/lang/Runnable;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public u1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    check-cast p1, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->T(Lcom/transsion/dbdata/beans/media/MediaItem;ZI)V

    return-void
.end method

.method public v1(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    invoke-static {v0, p0, p1}, Lcc0;->c(Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V

    return-void
.end method

.method public w1(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L:Z

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O0()I

    move-result v2

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L:Z

    invoke-interface {v1, p1, v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->C1()V

    :cond_3
    return-void
.end method

.method public x1()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->T0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->P0()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->q:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_6

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz v0, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->x:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->hideLoadingView()V

    return-void
.end method

.method public z1(I)V
    .locals 5

    iput p1, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w:I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-le p1, v1, :cond_1

    sget v3, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O0()I

    move-result v3

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->C1()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->t:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->D()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->O0()I

    move-result v4

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    iget-boolean p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->L:Z

    invoke-interface {v0, v3, v1, p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_6
    return-void
.end method
