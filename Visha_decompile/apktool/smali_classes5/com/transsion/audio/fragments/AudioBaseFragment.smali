.class public Lcom/transsion/audio/fragments/AudioBaseFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Lsq3$a;
.implements Lcom/transsion/audio/player/MusicPlayManager$c;
.implements Lcom/transsion/audio/adapter/AudioItemAdapter$c;
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/fragments/AudioBaseFragment$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Ljava/util/ArrayList;

.field public C:Ljava/util/ArrayList;

.field public D:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

.field public I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

.field public J:Z

.field public K:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public L:Z

.field public M:Z

.field public N:Ljava/lang/Long;

.field public O:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public P:Z

.field public Q:Lcom/transsion/audio/fragments/AudioBaseFragment$a;

.field public R:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field public S:Landroidx/activity/result/ActivityResultLauncher;

.field public final T:Landroidx/lifecycle/Observer;

.field public final U:Landroidx/lifecycle/Observer;

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Z

.field public o:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public q:Ljava/util/ArrayList;

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Lcom/transsion/audio/adapter/AudioItemAdapter;

.field public v:Lif7;

.field public w:Landroid/widget/TextView;

.field public x:I

.field public y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->r:Z

    iput v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->C:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->L:Z

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    new-instance v0, Lqm;

    invoke-direct {v0, p0}, Lqm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->R:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lrm;

    invoke-direct {v1, p0}, Lrm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->S:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Lsm;

    invoke-direct {v0, p0}, Lsm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->T:Landroidx/lifecycle/Observer;

    new-instance v0, Ltm;

    invoke-direct {v0, p0}, Ltm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->U:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->a1()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioBaseFragment;)Landroid/util/Pair;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->k1(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioBaseFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C0(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->h1(Z)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadDataChange()V

    return-void
.end method

.method public static synthetic Y0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic Z0(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic f0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->Z0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->b1()V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->p1()V

    return-void
.end method

.method private hideLoadingView()V
    .locals 0

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->e1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->Y0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j1(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/audio/fragments/AudioBaseFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->o1(I)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/audio/fragments/AudioBaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->d1(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->f1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->j1(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n1(ZLjava/lang/Throwable;)V
    .locals 1

    const-string p1, "AudioBaseFragment"

    const-string v0, "onRenameSuccess exception"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Luq3;->b(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->V0()V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->X0()V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/audio/fragments/AudioBaseFragment;ZLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->S0(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/audio/fragments/AudioBaseFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/fragments/AudioBaseFragment;->m1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->l1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->g1(Z)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/audio/fragments/AudioBaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->W0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->U0()V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/audio/fragments/AudioBaseFragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->c1(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/audio/fragments/AudioBaseFragment;ZLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->T0(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->i1()V

    return-void
.end method

.method public static synthetic z0(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->n1(ZLjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public A1()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEmptyView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioBaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->N0()V

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-nez v4, :cond_5

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-nez v4, :cond_7

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p0, v3, v0, v3}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startDragMode(ZIZ)V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->hideLoadingView()V

    return-void
.end method

.method public final B1()V
    .locals 0

    return-void
.end method

.method public C1(I)V
    .locals 5

    iput p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

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

    sget v3, Lcom/transsion/audio/R$string;->none_select:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-le p1, v1, :cond_1

    sget v3, Lcom/transsion/audio/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/transsion/audio/R$string;->item:I

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

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->E1()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    invoke-interface {v0, v3, v1, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->H()Z

    :cond_6
    return-void
.end method

.method public D1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

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

.method public final E0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->T:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->U:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    :cond_0
    return-void
.end method

.method public final E1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->setAllEnable(Z)V

    :cond_1
    return-void
.end method

.method public F0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public G0(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->A:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->A:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->V(Ljava/util/ArrayList;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSelectCount "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->A:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":::::"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public H0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->E:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->O(Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->C1(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public I0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_0

    const-string p1, "audio"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public J0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_0

    const-string p1, "audio"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public K0(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dragMode enter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AudioBaseFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x476

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->S(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->w1()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateBackIcon(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v1, Lum;

    invoke-direct {v1, p0, p1}, Lum;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public L0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    move v2, v3

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    new-instance v0, Lxl;

    invoke-direct {v0, p0}, Lxl;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->x1(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public M0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcm;

    invoke-direct {v2}, Lcm;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ldm;

    invoke-direct {v2}, Ldm;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lao;->U()Lao;

    move-result-object v3

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v3, v2}, Lao;->F(I)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->i(Ljava/util/Set;)V

    const-string p1, "vd_mul_cancel_filt_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->k(Ljava/util/Set;)V

    const-string p1, "vd_mul_filt_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x455

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public N0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_a

    sget v1, Lcom/transsion/audio/R$id;->main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lraa;->i(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-ne v2, v1, :cond_0

    sget v2, Lcom/transsion/audio/R$string;->no_history:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/audio/R$string;->file_empty:I

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v2, Lcom/transsion/audio/R$id;->add_play_list_tv:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_8

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0x15

    const/16 v4, 0x29

    if-eq v2, v3, :cond_3

    const/16 v5, 0x1e

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    const/16 v5, 0x21

    if-ne v2, v5, :cond_7

    :cond_3
    iget-boolean v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->t:Z

    if-nez v5, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq v1, v3, :cond_4

    if-eq v1, v4, :cond_4

    sget v1, Lcom/transsion/audio/R$string;->add_to_playlist:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/transsion/audio/R$string;->go_download:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    const-string v0, "vd_all_audio_gd_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->text_no_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->p:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$string;->no_recently_add_audio:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_7
    if-ne v2, v1, :cond_9

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->text_no_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->p:Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$string;->no_history:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    :goto_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->D1()V

    :cond_a
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x62

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->q1()V

    :cond_b
    return-void
.end method

.method public O0(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    sget v0, Lcom/transsion/audio/R$id;->pull_damping_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lyl;

    invoke-direct {v0, p0}, Lyl;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initOverScrollDecor(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public P0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public Q0()Z
    .locals 1

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x35

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

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

.method public R0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->r:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->r:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->r:Z

    return v1
.end method

.method public final synthetic S0(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startDragMode(ZIZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public final synthetic T0(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public final synthetic U0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic V0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    :cond_0
    return-void
.end method

.method public final synthetic W0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->O(Z)V

    return-void
.end method

.method public final synthetic X0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final synthetic a1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mPullDampingLayout:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->C1(I)V

    return-void
.end method

.method public final synthetic b1()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioBaseFragment"

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

    new-instance v1, Lgm;

    invoke-direct {v1, p0}, Lgm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->C1(I)V

    return-void
.end method

.method public final synthetic c1(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->isAppBarLayoutExpand(II)V

    return-void
.end method

.method public final synthetic d1(Landroidx/activity/result/ActivityResult;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

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

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v3, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v4, Lcom/transsion/audio/R$drawable;->ic_delete:I

    sget v5, Lcom/transsion/audio/R$string;->delete:I

    invoke-direct {v3, v4, v5, v0}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const-string p1, "vd_vmore_playnext_cl"

    invoke-static {p0, p1}, Lry5;->f(ILjava/lang/String;)V

    invoke-static {v2}, Lbr;->c(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x9

    if-ne v0, v4, :cond_5

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const-string p1, "vd_vmore_playlater_cl"

    invoke-static {p0, p1}, Lry5;->f(ILjava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->X0()V

    :cond_2
    sget p0, Lcom/transsion/audio/R$string;->audio_added_current_playlist:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x43b

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->later(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "change_minibar_state"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x5

    const-string v5, "vd_vmore_del_cl"

    if-ne v0, v4, :cond_7

    invoke-virtual {p0, v2, v3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->J0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/playercommon/data/FileOperateItem;)V

    if-eqz v2, :cond_6

    iget-boolean p0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-static {v5, p0}, Lkz5;->f(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    invoke-static {v5, v1}, Lkz5;->g(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    const/16 v4, 0xc

    if-ne v0, v4, :cond_9

    invoke-virtual {p0, v2, v3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->I0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/playercommon/data/FileOperateItem;)V

    if-eqz v2, :cond_8

    iget-boolean p0, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-static {v5, p0}, Lkz5;->f(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_8
    invoke-static {v5, v1}, Lkz5;->g(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_9
    const/16 v2, 0x3eb

    const/4 v4, 0x1

    const-string v5, "audio"

    if-ne v0, v2, :cond_a

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v3, v5, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_a
    sget-boolean v2, Lpp3;->E:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const-string v0, "rename_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b0(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    if-ne v0, p1, :cond_c

    invoke-static {}, Lp10;->a()V

    goto :goto_0

    :cond_c
    const/16 p1, 0xd

    if-ne v0, p1, :cond_d

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_0

    :cond_d
    const/16 p1, 0x10

    if-ne v0, p1, :cond_e

    iput-boolean v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    goto :goto_0

    :cond_e
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v3, v5, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V

    :cond_f
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 v0, 0x41e

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x492

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p2

    if-lez p1, :cond_3

    aget-object p1, p2, v1

    instance-of p2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->O:Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->w1()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p1, :cond_3

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "from"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "type"

    const-string v0, "audio"

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

    :cond_3
    :goto_0
    return-void
.end method

.method public final synthetic e1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    return-void
.end method

.method public editMode(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModelEditFrom(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x35

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->inflateOperationBar()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initShow(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    new-instance v1, Lim;

    invoke-direct {v1, p0}, Lim;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setMainViewModelEditMode(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->O(Z)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->Q(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->w1()V

    :cond_6
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-interface {v0, v2, v3, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->d(ZIZ)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_9

    move v4, v1

    goto :goto_1

    :cond_9
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAllCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lnm;

    invoke-direct {v4, p0}, Lnm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz v0, :cond_c

    if-nez p1, :cond_b

    move v4, v1

    goto :goto_2

    :cond_b
    move v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v4, "show_audio_sort_point"

    invoke-static {v0, v4, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    move v1, v3

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->updateBackIcon(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v1, Lom;

    invoke-direct {v1, p0, p1}, Lom;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_11

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    goto :goto_4

    :cond_11
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz p1, :cond_12

    new-instance v0, Lpm;

    invoke-direct {v0, p0}, Lpm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    :cond_13
    :goto_4
    return-void
.end method

.method public final synthetic f1(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic g1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    :cond_1
    return-void
.end method

.method public final synthetic h1(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic i1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x492

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSortView(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initSortView(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public isAppBarLayoutExpand(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-lez p2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_1

    if-ge p1, p2, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setAppBarExpand(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setAppBarExpand(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setAppBarExpand(Z)V

    :goto_0
    return-void
.end method

.method public final synthetic k1(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioBaseFragment;)Landroid/util/Pair;
    .locals 3

    invoke-static {}, Lao;->U()Lao;

    move-result-object p3

    invoke-virtual {p3, p1}, Lao;->G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-direct {p3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v1, v2, :cond_1

    invoke-static {p1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->copy(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {p3}, Lcom/transsion/dbdata/utils/SortUtil;->u(Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-eq p0, p2, :cond_3

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    iget p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, p2, v0, v1}, Lao;->s0(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic l1(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic m1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/util/Pair;)V
    .locals 2

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Llm;

    invoke-direct {v1, p0, v0}, Llm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->x1(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iget-object p2, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->H1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_2
    if-eqz p3, :cond_3

    const/4 p1, 0x0

    invoke-static {p1}, Luq3;->b(Z)V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->O:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public final synthetic o1(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

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

    const-string p1, "AudioBaseFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p0, v2, v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->startDragMode(ZIZ)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0

    :cond_3
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

    const-class p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->D:Lcom/transsion/playercommon/videomodel/PlayListModel;

    new-instance p1, Lcom/transsion/audio/fragments/AudioBaseFragment$a;

    invoke-direct {p1, p0}, Lcom/transsion/audio/fragments/AudioBaseFragment$a;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q:Lcom/transsion/audio/fragments/AudioBaseFragment$a;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q:Lcom/transsion/audio/fragments/AudioBaseFragment$a;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q:Lcom/transsion/audio/fragments/AudioBaseFragment$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lchc;->c()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q:Lcom/transsion/audio/fragments/AudioBaseFragment$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q:Lcom/transsion/audio/fragments/AudioBaseFragment$a;

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->U:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r1(Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setSelectItems(Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->s1(I)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->D1()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsq3;->c(Lsq3$a;)V

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->r:Z

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->n:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->n:Z

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->F:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->F:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadDataChange()V

    :cond_1
    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    return-void
.end method

.method public onSelectTabViewPager()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onSelectTabViewPager()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->L0()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsRealVisibleToUser:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->D1()V

    return-void
.end method

.method public onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->needBg:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/audio/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->E0()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->B1()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->R:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_1
    return-void
.end method

.method public final synthetic p1()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public q1()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->text_filtered_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    const/16 v2, 0x16

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    sget v2, Lcom/transsion/audio/R$string;->visha_look_filter_audio:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/audio/R$string;->visha_look_filter_audios:I

    :goto_0
    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "vd_audiolist_filt_show"

    const-string v1, "num"

    invoke-static {v0, v1, p0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public r1(Z)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->L:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->K:Lcom/transsion/playercommon/videomodel/MainViewModel;

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
    const/16 v3, 0x32

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewNavBottomPadding(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void

    :cond_2
    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/utils/a;->D(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x90

    goto :goto_2

    :cond_3
    const/16 v3, 0x73

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v2

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v3

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->resolveNavigationBarInsetPx()I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    const/16 v3, 0x24

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_7
    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v2, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewBottomPaddingPx(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v3, :cond_9

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance v1, Lzl;

    invoke-direct {v1, p0, p1}, Lzl;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v2, v4}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    :cond_b
    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewBottomPaddingPx(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v3, :cond_c

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance v1, Lam;

    invoke-direct {v1, p0, p1}, Lam;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void

    :cond_d
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    if-eq p1, v3, :cond_e

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_e
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3

    :cond_f
    move v1, v2

    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyRecyclerViewNavBottomPadding(Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_10
    return-void
.end method

.method public releaseWhenDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->releaseWhenDestroyView()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->R:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method public s1(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setSelectItems(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    new-instance v1, Lem;

    invoke-direct {v1, p0}, Lem;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setOperateFinishListener(Lcom/transsion/playercommon/widgets/AppFootActionBar$c;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    const-string v3, "vd_mul_del_cl"

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v4}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-direct {p1, v2, v4, v5, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {v3, v0, p0}, Lkz5;->b(Ljava/lang/String;ZI)V

    goto/16 :goto_2

    :cond_2
    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x1e

    if-eq p1, v2, :cond_4

    const/16 v2, 0x20

    if-eq p1, v2, :cond_4

    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v4}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-direct {p1, v2, v4, v5, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v1, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {v3, v0, p0}, Lkz5;->b(Ljava/lang/String;ZI)V

    goto/16 :goto_2

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->showRemoveDialog()V

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lfm;

    invoke-direct {v2}, Lfm;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "data_list_ids"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "list_flag"

    iget v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->D:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1}, Lvg9;->e(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lvg9;->f(Ljava/util/ArrayList;)V

    const-string p1, "from_list_more_icon"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v0, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->S:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x24

    if-ne p1, v2, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->M0(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preShare(Z)V

    const-string p0, "vd_mul_share_cl"

    const-wide v0, 0xd91af27329L

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_2
    return-void
.end method

.method public selectAll(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->O(Z)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 0

    return-void
.end method

.method public t1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lhm;

    invoke-direct {v2, p0, p2, p1}, Lhm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v1, Ljm;

    invoke-direct {v1, p0, p1, v0, p3}, Ljm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    new-instance p0, Lkm;

    invoke-direct {p0, p3}, Lkm;-><init>(Z)V

    invoke-virtual {p2, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public u1()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->F()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->F()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v3, v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->U(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    move v3, v6

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/transsion/dbdata/beans/media/AudioItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public v1(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lmm;

    invoke-direct {v0, p0, p1}, Lmm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;I)V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->x1(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w1()V
    .locals 1

    new-instance v0, Lbm;

    invoke-direct {v0, p0}, Lbm;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->x1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x1(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/audio/fragments/AudioBaseFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment$1;-><init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget v0, Lcom/transsion/audio/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/AudioItemAdapter;->P(Lcom/transsion/dbdata/beans/media/AudioItem;ZI)V

    :cond_3
    return-void
.end method

.method public z1(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->x:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->G:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->E1()V

    :cond_2
    return-void
.end method
