.class public Lcom/transsion/audio/fragments/PlayListFragment;
.super Lcom/transsion/audio/fragments/AudioDragBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/fragments/PlayListFragment$i;,
        Lcom/transsion/audio/fragments/PlayListFragment$g;,
        Lcom/transsion/audio/fragments/PlayListFragment$h;
    }
.end annotation


# instance fields
.field public A0:Z

.field public B0:Z

.field public C0:Z

.field public D0:I

.field public E0:Lcom/transsion/widgetslib/dialog/d;

.field public F0:Landroid/view/View;

.field public G0:Z

.field public H0:Z

.field public I0:Z

.field public J0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public K0:Z

.field public L0:Landroid/widget/ImageView;

.field public w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field public x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public y0:Lcom/transsion/dbdata/database/PlayList;

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->K0:Z

    return-void
.end method

.method public static synthetic A2(Lcom/transsion/audio/fragments/PlayListFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->W3(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/PlayListFragment;->X3(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic C2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->T3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic D2(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->G3(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->A3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic E3(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "throwable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayListFragment"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic F2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->D3(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->H3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic G3(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lao;->n(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->N3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic I2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->u3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic I3(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, p0}, Lao;->l(Ljava/util/List;)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic J2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->Q3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic K2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->P3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic L2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/audio/fragments/PlayListFragment;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->O3(Lcom/transsion/audio/fragments/PlayListFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->y3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic N2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->J3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic N3(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlayListFragment"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic O2(Lcom/transsion/audio/fragments/PlayListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    return p0
.end method

.method public static bridge synthetic P2(Lcom/transsion/audio/fragments/PlayListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    return p0
.end method

.method public static bridge synthetic Q2(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/dbdata/beans/media/MediaBucket;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    return-object p0
.end method

.method private synthetic Q3(Ljava/util/List;)V
    .locals 1

    const-string p1, "PlayListFragment"

    const-string v0, "PlayListRecentlyLiveData NEW  change"

    invoke-static {p1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public static bridge synthetic R2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->i3(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static bridge synthetic S2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->l3(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static bridge synthetic T2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->n3(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static bridge synthetic U2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->p3(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public static bridge synthetic V2(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->Y3()V

    return-void
.end method

.method private synthetic V3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->b4()V

    return-void
.end method

.method public static bridge synthetic W2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/PlayListFragment;->i4(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic X2(Lcom/transsion/audio/fragments/PlayListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic Y2(Lcom/transsion/audio/fragments/PlayListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic Z2(Lcom/transsion/audio/fragments/PlayListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic a3(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static a4(I)Lcom/transsion/audio/fragments/PlayListFragment;
    .locals 3

    new-instance v0, Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/PlayListFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_flag"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic b3(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private b4()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->k4()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "change_minibar_state"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c3(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private c4()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryAudioData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lao;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v1}, Lao;->y(Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lao;->b0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lao;->X(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/transsion/dbdata/utils/SortUtil;->x(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_3
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int v1, v1

    int-to-long v1, v1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lao;->Y(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synthetic d3(Lcom/transsion/audio/fragments/PlayListFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public static synthetic e3(Lcom/transsion/audio/fragments/PlayListFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method private f4(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "list_flag"

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->D:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lvg9;->e(Ljava/util/ArrayList;)V

    const-string v0, "from_list_more_icon"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->S:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-direct {p1, v0, p2, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance v0, Lcom/transsion/audio/fragments/PlayListFragment$c;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/audio/fragments/PlayListFragment$c;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    return-void
.end method

.method private g4()V
    .locals 4

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sget v1, Lcom/transsion/audio/R$menu;->playlist_more_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$id;->add_for_list:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$id;->rename:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$id;->remove_playlsit:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    new-instance v1, Ls58;

    invoke-direct {v1, p0}, Ls58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public static synthetic i2(Lcom/transsion/audio/fragments/PlayListFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->L3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j2(Lcom/transsion/audio/fragments/PlayListFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->V3(Landroid/view/View;)V

    return-void
.end method

.method private j4(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    iput-boolean p3, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isShuffle:Z

    iput-object p2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->C0:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide p2, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-wide p2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startOpenVideo "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PlayListFragment"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string p2, "launch_audio_player_activity"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k2(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->v3(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->F3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic m2(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->t3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->R3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o2(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->I3(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private o3(Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lv48;

    invoke-direct {v0, p0}, Lv48;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lw48;

    invoke-direct {v0}, Lw48;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->o(Lzf1;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lx48;

    invoke-direct {v0, p0}, Lx48;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic p2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->E3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic q2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->S3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r2(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->z3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private r3()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnSelectListener(Lcom/transsion/audio/adapter/AudioItemAdapter$c;)V

    new-instance v0, Lcom/transsion/audio/fragments/PlayListFragment$b;

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/audio/fragments/PlayListFragment$b;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;IZ)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Ly48;

    invoke-direct {v1, p0}, Ly48;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->O1()V

    return-void
.end method

.method public static synthetic s2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->U3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic s3(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t2(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->x3(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic u2(Lcom/transsion/audio/fragments/PlayListFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->M3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->w3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v3(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    aput v3, v0, v2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    invoke-static {}, Lao;->U()Lao;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v3, v1, v4}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic w2(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->s3(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/fragments/PlayListFragment;->B3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x3(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lao;->m(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic y2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/fragments/PlayListFragment;->K3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic z2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->C3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic z3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lao;->m(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A1()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->A1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v1, :cond_2

    const/4 p0, 0x7

    :goto_0
    const/16 v1, 0x48a

    if-eqz v0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    xor-int/lit8 v0, v0, 0x1

    const-string v1, "audio"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    return-void
.end method

.method public final synthetic A3(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->q(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V

    return-void
.end method

.method public final synthetic B3(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;
    .locals 5

    iget-object p2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p2}, Lcom/transsion/playercommon/videomodel/PlayListModel;->n()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/PlayList;

    iget v1, v0, Lcom/transsion/dbdata/database/PlayList;->id:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v3, v3, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    :cond_1
    invoke-static {}, Lao;->U()Lao;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int p0, v0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lao;->p(ILcom/transsion/dbdata/beans/media/AudioItem;Z)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic C3(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->s(Z)V

    sget p0, Lcom/transsion/audio/R$string;->remove_from_the_playlist:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public final synthetic D3(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->y0:Lcom/transsion/dbdata/database/PlayList;

    iget p0, p0, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-virtual {p1, p0, v0, v1}, Lao;->q(ILjava/util/List;Z)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic F3(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->E0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->s(Z)V

    :cond_0
    sget p1, Lcom/transsion/audio/R$string;->remove_from_the_playlist:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V

    return-void
.end method

.method public final synthetic H3(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->t(Z)V

    return-void
.end method

.method public J0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/playercommon/data/FileOperateItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->h4(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public final synthetic J3(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->E0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->t(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V

    return-void
.end method

.method public K0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dragMode enter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PlayListFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->K0(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->F0:Landroid/view/View;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->F0:Landroid/view/View;

    if-eqz p1, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-nez v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "audio"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final synthetic K3(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->V1(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/audio/R$id;->iv_item_more:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mFragmentTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/transsion/audio/fragments/PlayListFragment;->f4(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {p0}, Lp06;->A(I)Ljava/lang/String;

    move-result-object p0

    const-string p3, "from"

    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TYPE"

    const-string v1, "audio"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p2, v0, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "vd_vmore_show"

    const-wide/16 v0, 0x246c

    invoke-static {p2, p1, p0, v0, v1}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final synthetic L3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->h3()V

    return-void
.end method

.method public final synthetic M3(Landroid/view/View;)V
    .locals 6

    sget v1, Lcom/transsion/audio/R$string;->talkback_clear_history:I

    sget v2, Lcom/transsion/audio/R$string;->clear_empty:I

    sget v3, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v4, Lcom/transsion/audio/fragments/PlayListFragment$h;

    invoke-direct {v4, p0}, Lcom/transsion/audio/fragments/PlayListFragment$h;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/fragments/PlayListFragment;->d4(IIILandroid/content/DialogInterface$OnClickListener;I)V

    const-string p0, "vd_recent_playlist_del_cl"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final synthetic O3(Lcom/transsion/audio/fragments/PlayListFragment;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->c4()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->G0(Ljava/util/List;)V

    return-object p1
.end method

.method public final synthetic P3(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ln06;->b(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q0()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    return-void
.end method

.method public final synthetic R3(Ljava/util/List;)V
    .locals 1

    const-string p1, "PlayListFragment"

    const-string v0, "PlayListFavoriteLiveData change"

    invoke-static {p1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public final synthetic S3(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "PlayListFragment"

    const-string v0, "PlayListFrequentlyLiveData change"

    invoke-static {p1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public final synthetic T3(Ljava/util/List;)V
    .locals 1

    const-string p1, "PlayListFragment"

    const-string v0, "PlayListRecentlyLiveData NEW  change"

    invoke-static {p1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public final synthetic U3(Ljava/lang/Boolean;)V
    .locals 1

    const-string p1, "PlayListFragment"

    const-string v0, "AudioItemChangeLiveData change"

    invoke-static {p1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    return-void
.end method

.method public final synthetic W3(Landroid/view/MenuItem;)Z
    .locals 8

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/transsion/audio/R$id;->remove_song:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v6, v7}, Lcom/transsion/audio/fragments/PlayListFragment;->f3(ZLjava/lang/String;)V

    const-string v0, "vd_remove_song"

    const-wide v1, 0xd91af27353L

    invoke-static {v7, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/transsion/audio/R$id;->rename:I

    if-ne v1, v2, :cond_1

    new-instance v1, Lk78;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lk78;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/transsion/audio/fragments/PlayListFragment$e;

    invoke-direct {v2, p0}, Lcom/transsion/audio/fragments/PlayListFragment$e;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {v1, v2}, Lk78;->w0(Lk78$d;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->y0:Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {v1, v0}, Lk78;->v0(Lcom/transsion/dbdata/database/PlayList;)V

    invoke-virtual {v1}, Lk78;->A0()V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/transsion/audio/R$id;->remove_playlsit:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/transsion/audio/R$string;->delete_the_playlist:I

    sget v2, Lcom/transsion/audio/R$string;->delete:I

    sget v3, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v4, Lcom/transsion/audio/fragments/PlayListFragment$g;

    invoke-direct {v4, p0}, Lcom/transsion/audio/fragments/PlayListFragment$g;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/fragments/PlayListFragment;->d4(IIILandroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/audio/R$string;->delete_music_playlist_dialog_message:I

    sget v2, Lcom/transsion/audio/R$string;->delete:I

    sget v3, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v4, Lcom/transsion/audio/fragments/PlayListFragment$g;

    invoke-direct {v4, p0}, Lcom/transsion/audio/fragments/PlayListFragment$g;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    sget v5, Lcom/transsion/audio/R$string;->delete_the_playlist:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/fragments/PlayListFragment;->d4(IIILandroid/content/DialogInterface$OnClickListener;I)V

    :goto_0
    const-string v0, "vd_delete_list"

    const-wide v1, 0xd91af27354L

    invoke-static {v7, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/transsion/audio/R$id;->add_for_list:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    const-string v2, "vd_add_song_Icon"

    invoke-virtual {p0, v1, v2}, Lcom/transsion/audio/fragments/PlayListFragment;->f3(ZLjava/lang/String;)V

    const-wide v0, 0xd91af27351L

    invoke-static {v7, v2, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    :goto_1
    return v6
.end method

.method public final synthetic X3(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p2, Lcom/transsion/widgetslib/dialog/c;

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/transsion/playercommon/R$string;->delete_progress:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->E0:Lcom/transsion/widgetslib/dialog/d;

    iget-boolean p2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->q3(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->j3(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->m3(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p3, "vd_vmore_remove_cl_check"

    const/4 v0, 0x0

    invoke-static {p3, v0, p2}, Lkz5;->b(Ljava/lang/String;ZI)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->o3(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public final Y3()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p0, "recent_playlist_songs_cl"

    const-wide v2, 0xd91af27381L

    invoke-static {v1, p0, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz p0, :cond_1

    const-string p0, "favorite_list_songs_cl"

    const-wide v2, 0xd91af27382L

    invoke-static {v1, p0, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Z3()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "audio_amount"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    const-wide/16 v3, 0x246c

    if-eqz v2, :cond_0

    const-string p0, "favorite_list_show_p"

    invoke-static {v1, v0, p0, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v2, :cond_1

    const-string p0, "vd_recent_playlist_show_p"

    invoke-static {v1, v0, p0, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lkz5;->e(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final d4(IIILandroid/content/DialogInterface$OnClickListener;I)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/audio/fragments/PlayListFragment;->e4(Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x429

    if-eq p1, p2, :cond_6

    const/16 p2, 0x42e

    if-eq p1, p2, :cond_5

    const/16 p2, 0x430

    if-eq p1, p2, :cond_4

    const/16 p2, 0x455

    if-eq p1, p2, :cond_3

    const/16 p2, 0x460

    if-eq p1, p2, :cond_2

    const/16 p2, 0x49f

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget p1, Lcom/transsion/audio/R$string;->clear_history:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    sget p2, Lcom/transsion/audio/R$string;->clear_histories_recorded:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    sget v2, Lcom/transsion/audio/R$string;->clear_empty:I

    sget v3, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v4, Lcom/transsion/audio/fragments/PlayListFragment$i;

    invoke-direct {v4, p0}, Lcom/transsion/audio/fragments/PlayListFragment$i;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/fragments/PlayListFragment;->e4(Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_2

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_2

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->K0:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/transsion/audio/fragments/PlayListFragment$7;

    invoke-direct {p2, p0}, Lcom/transsion/audio/fragments/PlayListFragment$7;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public final e4(Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;I)V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    if-nez p5, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public editMode(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->editMode(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lif7;->setIntervalTime(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lif7;->setIntervalTime(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    invoke-virtual {v0}, Lif7;->resetClickTime()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_3

    if-nez p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAddSongIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/transsion/audio/fragments/PlayListFragment;->C0:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->L0:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAddSongIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->Z1()V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->J0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setDragAnimationView(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->T1(Landroid/view/View;)V

    :goto_4
    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->F0:Landroid/view/View;

    if-eqz v0, :cond_f

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->F0:Landroid/view/View;

    if-eqz p1, :cond_e

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_5

    :cond_e
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-nez v0, :cond_10

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "audio"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setShuffleBtnVisible(ZLjava/lang/String;)V

    :cond_10
    return-void
.end method

.method public final f3(ZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->g2(Z)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/transsion/playercommon/videomodel/AudioDataListModel;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/videomodel/AudioDataListModel;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/videomodel/AudioDataListModel;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int v1, v1

    const-string v2, "fragment_playlist_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    const-string v2, "fragment_playlist_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "list_flag"

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "action"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    invoke-static {p1, p0, p0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g3()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lc58;

    invoke-direct {v2}, Lc58;-><init>()V

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

    invoke-static {v0}, Lvg9;->f(Ljava/util/ArrayList;)V

    const-string v0, "from_list_more_icon"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v1, Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDeleteIconResId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/audio/R$drawable;->ic_delete_all:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$drawable;->ic_remove:I

    :goto_0
    return p0
.end method

.method public getDeleteTextResId()I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/audio/R$string;->clear:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$string;->remove:I

    :goto_0
    return p0
.end method

.method public final h3()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->H0:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x449

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public h4(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-nez v0, :cond_0

    const-string v0, "vd_vmore_remove_cl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkz5;->g(Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/audio/R$string;->remove_from_favorites:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/audio/R$string;->clear_history:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/audio/R$string;->remove_song_new:I

    :goto_0
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/transsion/audio/R$string;->clear:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/transsion/audio/R$string;->remove:I

    :goto_1
    new-instance v2, Lcom/transsion/audio/fragments/PlayListFragment$d;

    invoke-direct {v2, p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$d;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->cancel:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public handleManual(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->handleManual(Z)V

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lp06;->B(ILjava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final i3(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lj58;

    invoke-direct {v1, p1}, Lj58;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lk58;

    invoke-direct {v0, p0}, Lk58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final i4(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iput-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    iput-object p2, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->C0:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startOpenVideo "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "PlayListFragment"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string p2, "launch_audio_player_activity_from_audio_list"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public inflateOperationBar()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    const-string v1, "PlayListFragment"

    if-nez v0, :cond_1

    const-string p0, "inflateOperationBar mFragmentView == null"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_1
    sget v2, Lcom/transsion/audio/R$id;->bottom_audio_action_bar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_2

    const-string p0, "inflateOperationBar bottom_audio_action_bar stub == null"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    new-instance v2, Lcom/transsion/audio/fragments/PlayListFragment$f;

    invoke-direct {v2, p0, v1}, Lcom/transsion/audio/fragments/PlayListFragment$f;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, p0}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->setListFlag(I)V

    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x430

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x429

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x483

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x49f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x455

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initTitleBar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mBackIv:Landroid/view/View;

    new-instance v1, Lq58;

    invoke-direct {v1, p0}, Lq58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleBarLayout:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initSortView(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAddSongIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAddSongIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->L0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->L0:Landroid/widget/ImageView;

    new-instance v0, Lr58;

    invoke-direct {v0, p0}, Lr58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initSortView(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initSortView(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAddSongIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final j3(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ld58;

    invoke-direct {v1, p1}, Ld58;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Le58;

    invoke-direct {v0, p0}, Le58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final k3()V
    .locals 5

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v2}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public k4()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio_play_repeat_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const-string v4, "vd_miniplayer_none"

    invoke-static {v4}, Lp06;->d0(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    iput v4, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V

    iput-boolean v2, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v4, v2, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iput-wide v4, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-static {}, Lao;->U()Lao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lao;->f0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v4

    invoke-static {v2, v4}, Lp06;->y(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/audio/player/MusicPlayManager;->C(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setRepeatMode(I)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/audio/player/MusicPlayManager;->N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :cond_1
    return-void
.end method

.method public final l3(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lf58;

    invoke-direct {v1, p1}, Lf58;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lg58;

    invoke-direct {v0, p0}, Lg58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final l4()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v3, p0, Lcom/transsion/audio/fragments/PlayListFragment;->L0:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAddSongIv:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez p0, :cond_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mMenuMore:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public loadData(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-static {v0}, Lt55;->u(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(ZZ)V

    const-string p1, "PlayListFragment"

    const-string p2, "PlayListFragment loadData "

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x320

    :goto_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lt58;

    invoke-direct {p2, p0}, Lt58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

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

    new-instance p2, Lu58;

    invoke-direct {p2, p0}, Lu58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    new-instance p0, Lq48;

    invoke-direct {p0}, Lq48;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final m3(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lz48;

    invoke-direct {v1, p1}, Lz48;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lb58;

    invoke-direct {v0, p0}, Lb58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v0, :cond_0

    const-string p0, "favorite_list_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz p0, :cond_1

    const-string p0, "vd_recent_playlist_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 3

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f0:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string p1, "favorite_list_show"

    invoke-static {p0, v2, p1, v0, v1}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f0:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const-string p1, "vd_recent_playlist_show"

    invoke-static {p0, v2, p1, v0, v1}, Lr06;->e(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n3(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lm58;

    invoke-direct {v1, p0, p1}, Lm58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Ln58;

    invoke-direct {v0, p0}, Ln58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->h3()V

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->iv_add_song:I

    const-wide/16 v2, 0x246c

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_1

    const-string p1, "vd_favorite_moreadd_cl"

    invoke-virtual {p0, v5, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->f3(ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz p0, :cond_8

    invoke-static {v4, p1, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->add_play_list_tv:I

    if-ne v0, v1, :cond_6

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz p1, :cond_2

    const-string p1, "vd_favorite_add_cl"

    invoke-virtual {p0, v5, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->f3(ZLjava/lang/String;)V

    invoke-static {v4, p1, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x15

    if-eq p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "vd_add_song_text"

    invoke-virtual {p0, v5, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->f3(ZLjava/lang/String;)V

    const-wide v0, 0xd91af27352L

    invoke-static {v4, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz p1, :cond_5

    iput-boolean v5, p0, Lcom/transsion/audio/fragments/PlayListFragment;->H0:Z

    :cond_5
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x423

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/audio/R$id;->menu_more:I

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->g4()V

    const-string p0, "vd_nsonglist_list_more_cl"

    invoke-static {v4, p0, v2, v3}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/audio/R$id;->iv_play_shuffle:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->startShufflePlay()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->f0:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lb39;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->I0:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->J:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const/16 v1, 0x1e

    iput v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayListFragment,bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayListFragment"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string v3, "bucket_fragment_buicket_path"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    const-string v1, "bucket_fragment_buicket_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentName(Ljava/lang/String;)V

    const-string v1, "list_flag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    :cond_0
    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x20

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    const/16 v4, 0x29

    if-ne v0, v4, :cond_2

    move v4, p1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    const/16 v4, 0x21

    if-ne v0, v4, :cond_3

    move v4, p1

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    move v0, p1

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-nez v1, :cond_6

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move p1, v3

    :cond_6
    :goto_4
    iput-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->C0:Z

    if-nez p1, :cond_7

    new-instance p1, Lcom/transsion/dbdata/database/PlayList;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->y0:Lcom/transsion/dbdata/database/PlayList;

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->w0:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-wide v0, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int v0, v0

    iput v0, p1, Lcom/transsion/dbdata/database/PlayList;->id:I

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mListFlag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {p1, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v0, :cond_8

    const-string p1, "PlayListFragment,mPlayListModel.getPlayListRecentlyLiveData()"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->k()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lp48;

    invoke-direct {v0, p0}, Lp48;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->l()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, La58;

    invoke-direct {v0, p0}, La58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_5

    :cond_9
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_5

    :cond_a
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->j()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Ll58;

    invoke-direct {v0, p0}, Ll58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->k()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lo58;

    invoke-direct {v0, p0}, Lo58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lp58;

    invoke-direct {v0, p0}, Lp58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_5
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->registerBottomBarVisibleChanged()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->onDestroy()V

    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->a2()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onHiddenChanged(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->K0:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->K0:Z

    :goto_0
    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->markPointVisiable(Z)V

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/audio/R$layout;->audios_fragment:I

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-nez v0, :cond_0

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->c(Lsq3$a;)V

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->E1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    return-void
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->P:Z

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->Q0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->updateShowUI()V

    :cond_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_END:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x484

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-nez v0, :cond_4

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsq3;->b(Lsq3$a;)V

    :cond_4
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->e1(Lcom/transsion/audio/player/MusicPlayManager$c;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/PlayListFragment;->markPointVisiable(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->R(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$dimen;->audio_file_operate_views_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->D0:I

    sget v0, Lcom/transsion/audio/R$id;->iv_audio_history_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->L0:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->initTitleBar(Landroid/view/View;)V

    sget v0, Lcom/transsion/audio/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSimpleOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v1, Lcom/transsion/audio/fragments/PlayListFragment$a;

    invoke-direct {v1, p0}, Lcom/transsion/audio/fragments/PlayListFragment$a;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    sget v0, Lcom/transsion/audio/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->r3()V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->O0(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setRvOverScrollDecorListener(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_4
    sget v0, Lcom/transsion/audio/R$id;->tab_menu_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->F0:Landroid/view/View;

    if-eqz v0, :cond_5

    new-instance v1, Ls48;

    invoke-direct {v1, p0}, Ls48;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->F0:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->media_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lr44;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget v0, Lcom/transsion/audio/R$id;->cl_drag_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->J0:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/audio/R$id;->iv_play_shuffle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/RoundImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIvShufflePlayBtn:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment;->N1()V

    return-void
.end method

.method public onVisibleChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onVisibleChanged(Z)V

    return-void
.end method

.method public final p3(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lh58;

    invoke-direct {v0}, Lh58;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Li58;

    invoke-direct {v0, p0}, Li58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final q3(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lt48;

    invoke-direct {v1, p1}, Lt48;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lu48;

    invoke-direct {v0, p0}, Lu48;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public refresh()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    return-void
.end method

.method public s1(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    const-string v2, "vd_mul_del_cl"

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v2, v0, p1}, Lkz5;->b(Ljava/lang/String;ZI)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->k3()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v2, v0, p1}, Lkz5;->b(Ljava/lang/String;ZI)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->k3()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->showRemoveDialog()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->g3()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->M0(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->postDelayLoadData()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->y:Lcom/transsion/audio/widgets/AudioAppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preShare(Z)V

    const-string p0, "vd_mul_share_cl"

    const-wide v0, 0xd91af27329L

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public showRemoveDialog()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v4, "vd_mul_remove_cl"

    invoke-static {v4, v2, v1}, Lkz5;->b(Ljava/lang/String;ZI)V

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/audio/R$string;->remove_from_favorites:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    sget v1, Lcom/transsion/audio/R$string;->clear_histories_recorded:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget v1, Lcom/transsion/audio/R$string;->clear_history:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    sget v1, Lcom/transsion/audio/R$string;->remove_songs_new:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget v1, Lcom/transsion/audio/R$string;->remove_song_new:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-boolean v2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->z0:Z

    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    sget v1, Lcom/transsion/audio/R$string;->remove_songs_new_multi:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    sget v1, Lcom/transsion/audio/R$string;->remove_song_new_single:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_2
    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/audio/fragments/PlayListFragment;->A0:Z

    if-eqz v2, :cond_8

    sget v2, Lcom/transsion/audio/R$string;->clear:I

    goto :goto_3

    :cond_8
    sget v2, Lcom/transsion/audio/R$string;->remove:I

    :goto_3
    new-instance v3, Lr48;

    invoke-direct {v3, p0, v0}, Lr48;-><init>(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public startShufflePlay()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->setSelectedPos(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->T(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const-string v0, "audio"

    invoke-static {v0}, Lt06;->a(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/transsion/audio/fragments/PlayListFragment;->j4(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public t(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lp06;->B(ILjava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public final synthetic u3(Ljava/lang/Boolean;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V

    return-void
.end method

.method public updateShowUI()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShowUI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayListFragment"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->F0:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lr44;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->H0()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->A1()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->l4()V

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->Z3()V

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->G0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/PlayListFragment;->B0:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mSortIv:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mAudioSortPoint:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final synthetic w3(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->E0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->p(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x41f

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic y3(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->E0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment;->x0:Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->q(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x41f

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
