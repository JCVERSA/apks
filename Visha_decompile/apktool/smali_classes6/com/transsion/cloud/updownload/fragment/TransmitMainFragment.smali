.class public Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;
.super Lcom/transsion/playercommon/fragments/PlayBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcu4;
.implements Lrw4;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

.field public D:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

.field public E:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

.field public F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

.field public G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

.field public H:Ljava/util/List;

.field public I:Ljava/util/List;

.field public J:Lt6b;

.field public K:Lcom/transsion/widgetslib/dialog/d;

.field public L:Lcom/transsion/widgetslib/dialog/c;

.field public M:Z

.field public N:Z

.field public O:Landroid/widget/RelativeLayout;

.field public P:Lcom/transsion/playercommon/videomodel/MainViewModel;

.field public Q:Landroidx/activity/result/ActivityResultLauncher;

.field public final R:Landroidx/lifecycle/Observer;

.field public l:Z

.field public m:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public n:Landroid/view/View;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/ProgressBar;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/TextView;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->M:Z

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lf8b;

    invoke-direct {v1, p0}, Lf8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->Q:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Lg8b;

    invoke-direct {v0, p0}, Lg8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->R:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->a1()V

    return-void
.end method

.method public static bridge synthetic B0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->b1(ZZ)V

    return-void
.end method

.method public static bridge synthetic C0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t1(Z)V

    return-void
.end method

.method public static bridge synthetic D0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Lcom/transsion/cloudcore/db/CloudTaskEntity;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->A1(Lcom/transsion/cloudcore/db/CloudTaskEntity;I)V

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B1()V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic G0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic H0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic I0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic J0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic K0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static synthetic L0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    return-object p0
.end method

.method public static synthetic M0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic N0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic O0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic P0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic Q0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic R0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic S0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic T0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic U0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    return p0
.end method

.method public static synthetic V0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private W0(I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v1(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->J:Lt6b;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->g()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lt6b;->I(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private X0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->g()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    :cond_0
    return-void
.end method

.method private Z0()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ld8b;

    invoke-direct {v1}, Ld8b;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Le8b;

    invoke-direct {v1, p0}, Le8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method private d1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    const-string v1, "visha_cloud_TransmitMainFragment"

    if-eqz v0, :cond_0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lri4;->n(Ljava/lang/String;Lrw4;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->k(Ljava/lang/String;Lrw4;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$g;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$h;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$h;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$i;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$j;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$k;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->j1(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->k1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i1(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Ljava/lang/Long;
    .locals 2

    sget-object p0, Lyx2;->f:Ljava/io/File;

    invoke-static {p0}, Lb23;->l(Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->X0()V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->i1(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->p1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q1(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->m1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->o1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->r1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic q0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->L:Lcom/transsion/widgetslib/dialog/c;

    return-object p0
.end method

.method public static bridge synthetic r0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->K:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B:Z

    return p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    return p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    return-object p0
.end method

.method public static u1(ZZ)Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;
    .locals 3

    new-instance v0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;

    invoke-direct {v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "support_theme_background"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "transmit_upload_type"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static bridge synthetic v0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Lcom/transsion/widgetslib/dialog/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->L:Lcom/transsion/widgetslib/dialog/c;

    return-void
.end method

.method public static bridge synthetic x0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->K:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static bridge synthetic y0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->W0(I)V

    return-void
.end method

.method public static bridge synthetic z0(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->X0()V

    return-void
.end method


# virtual methods
.method public final A1(Lcom/transsion/cloudcore/db/CloudTaskEntity;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v1(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "data"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v0, Lcom/transsion/cloud/updownload/activity/TransferSheetDialogActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->Q:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final B1()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->tablet_visha_non_wifi_upload_warning:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->visha_non_wifi_upload_warning:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/playercommon/R$string;->tablet_visha_non_wifi_download_warning:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/transsion/playercommon/R$string;->visha_non_wifi_download_warning:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$a;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->ok:I

    new-instance v2, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$l;

    invoke-direct {v2, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$l;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public final C1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->h1()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public D1(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Ls44;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "--"

    :goto_0
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public E1(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/playercommon/R$string;->visha_uploading_all:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/playercommon/R$string;->visha_downloading_all:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->g1()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->z1(Z)V

    return-void
.end method

.method public final F1(FJ)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0}, Lri4;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object v2, v1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v2, v2, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v1, v1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v1, v1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->s:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    const-string p0, ""

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lkz6;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final G1(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->M:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    iget-boolean v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->s(Ljava/util/List;Z)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->M:Z

    :cond_1
    return-void
.end method

.method public final Y0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final a1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->A:Z

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/UploadingFragment;->h1(Z)Lcom/transsion/cloud/updownload/fragment/UploadingFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-static {v0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->A:Z

    invoke-static {v0}, Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;->h1(Z)Lcom/transsion/cloud/updownload/fragment/DownloadingFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-static {v0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :goto_0
    return-void
.end method

.method public final addBottomBarShowStateObserver()V
    .locals 3

    const-class v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/MainViewModel;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->R:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->P:Lcom/transsion/playercommon/videomodel/MainViewModel;

    iget-object v0, v0, Lcom/transsion/playercommon/videomodel/MainViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->y1(I)V

    return-void
.end method

.method public final b1(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B:Z

    if-eq p2, p1, :cond_9

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B:Z

    iget-boolean p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p2

    invoke-virtual {p2}, Lri4;->g()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/upload/task/NewUploadTask;

    iget-object v1, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget v0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->ic_download_retry:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    sget p1, Lcom/transsion/sniffer_load/R$drawable;->ic_download_parse:I

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz p1, :cond_5

    sget p1, Lcom/transsion/sniffer_load/R$drawable;->transfer_ic_upload_continue:I

    goto :goto_1

    :cond_5
    sget p1, Lcom/transsion/sniffer_load/R$drawable;->ic_download_continue:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B:Z

    if-eqz v0, :cond_7

    iget-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F1(FJ)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lkz6;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/sniffer_load/R$color;->visha_download_error_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_8
    sget p2, Lcom/transsion/sniffer_load/R$string;->paused:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/sniffer_load/R$color;->os_text_tertiary_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->y1(I)V

    return-void
.end method

.method public c1(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n:Landroid/view/View;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->p:Landroid/view/View;

    if-eqz v1, :cond_5

    sget v2, Lcom/transsion/sniffer_load/R$id;->main_empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n:Landroid/view/View;

    sget v2, Lcom/transsion/sniffer_load/R$id;->cl_empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/transsion/sniffer_load/R$string;->file_empty:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n:Landroid/view/View;

    sget v3, Lcom/transsion/magicvideo/R$id;->lottie_no_videos_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/transsion/common/R$drawable;->ic_video_empty_illustration:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-nez v1, :cond_1

    invoke-static {}, Lzz0;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->add_video_tv:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/sniffer_load/R$string;->download_guide_dialog_title:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lh8b;

    invoke-direct {v3, p0}, Lh8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottomInMulti:I

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottom:I

    :goto_1
    invoke-virtual {v1, v0, v0, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n:Landroid/view/View;

    sget v3, Lcom/transsion/sniffer_load/R$id;->text_no_videos:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v3, :cond_4

    sget v2, Lcom/transsion/sniffer_load/R$string;->visha_no_video_uploaded:I

    :cond_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->n:Landroid/view/View;

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "dl_manager_godl_show"

    const-string v0, "value"

    invoke-static {p1, v0, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x45c

    if-eq p1, p2, :cond_5

    const/16 p2, 0x467

    if-eq p1, p2, :cond_4

    const/16 p2, 0x470

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x471

    if-eq p1, p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1}, Lri4;->h()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->b1(ZZ)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->o()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->b1(ZZ)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->m()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final e1()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->z1(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/playercommon/R$string;->visha_uploading:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/playercommon/R$string;->downloading_status:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/playercommon/R$string;->visha_uploaded:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/playercommon/R$string;->photo_video_loaded:I

    :goto_1
    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public editMode(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->editMode(Z)V

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->i(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    iget-boolean v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    invoke-virtual {v0, v2}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->k(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editMode: enter = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "visha_cloud_TransmitMainFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->a(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    new-instance v3, Ly7b;

    invoke-direct {v3, p0}, Ly7b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->o:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->g1()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->z1(Z)V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C1()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x465

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final f1()V
    .locals 2

    const-class v0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->p()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lx7b;

    invoke-direct {v1, p0}, Lx7b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$d;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->u(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->m()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    new-instance v1, Lz7b;

    invoke-direct {v1, p0}, Lz7b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->r()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;

    invoke-direct {v1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$e;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->o()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, La8b;

    invoke-direct {v1, p0}, La8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    new-instance v1, Lb8b;

    invoke-direct {v1, p0}, Lb8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->t(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->j()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    new-instance v1, Lc8b;

    invoke-direct {v1, p0}, Lc8b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->g(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public g1()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public h1()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public inflateOperationBar()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/sniffer_load/R$id;->transfer_bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->initMenu(I)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C:Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;

    new-instance v1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$b;

    const-string v2, "visha_cloud_TransmitMainFragment"

    invoke-direct {v1, p0, v2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$b;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    :cond_0
    return-void
.end method

.method public initEvents()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->initEvents()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x41f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic j1(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ls44;->b(Landroid/content/Context;J)Landroid/text/SpannableString;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->o:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final synthetic k1(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "dl_manager_godl_cl"

    const-string v1, "value"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/transsion/sniffer_load/DownloadGuideActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "need_guide"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "support_theme_background"

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic l1(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmartUploadedTaskLiveData updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "visha_cloud_TransmitMainFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    invoke-virtual {p0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G1(Z)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->r()V

    return-void
.end method

.method public loadData(ZZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->Y0()V

    return-void
.end method

.method public m(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D1(J)V

    return-void
.end method

.method public final synthetic m1(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0}, Lri4;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->b1(ZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addObserverUploadingTasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_TransmitMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/upload/task/NewUploadTask;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/transsion/cloud/upload/task/NewUploadTask;->mProgressInfo:Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    iget-object p1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->s1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p0, :cond_0

    const-string p0, "dl_manager_show"

    invoke-static {p1, p0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public markPointVisiable(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->markPointVisiable(Z)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mAttach:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsParentVisibleToUser:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v1, :cond_0

    const-string v1, "upload"

    goto :goto_0

    :cond_0
    const-string v1, "download"

    :goto_0
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v2, "transfer_count"

    invoke-virtual {p1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "task_type"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v0, v3, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "cloud_transfer_show"

    invoke-static {p1, v0, p0}, Lcz5;->h(Landroid/os/Bundle;Lcom/transsion/athena/data/TrackData;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final synthetic n1(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmartDownloadedTaskLiveData updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "visha_cloud_TransmitMainFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    invoke-virtual {p0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G1(Z)V

    :cond_1
    return-void
.end method

.method public notifyVideoBarShowStateChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoBarShowStateChange :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_TransmitMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->O:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->O:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyPaddingBottomWithNav(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public final synthetic o1(Ljava/lang/Boolean;)V
    .locals 1

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->o()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->b1(ZZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "support_theme_background"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->A:Z

    const-string v0, "transmit_upload_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    :cond_0
    new-instance p1, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    invoke-virtual {p1, v0}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->r(Z)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    invoke-virtual {p1, p0}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->l(Lcu4;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->f1()V

    iget-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x471

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x467

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x470

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x45c

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/transsion/sniffer_load/R$layout;->transfer_fragment_transmit_main_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->p:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->p()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->x(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->B(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x467

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x471

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->o()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->z(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G:Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/updownload/viewmodel/TransferDataViewModel;->A(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45c

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x470

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->p:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    const-string v1, "visha_cloud_TransmitMainFragment"

    if-eqz p0, :cond_0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lri4;->n(Ljava/lang/String;Lrw4;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->k(Ljava/lang/String;Lrw4;)V

    :goto_0
    return-void
.end method

.method public onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->z:Z

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->Y0()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->M:Z

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->G1(Z)V

    iget-boolean v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object v0

    invoke-virtual {v0}, Lri4;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->g()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D1(J)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->rv_main_fragment:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->E:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    sget p2, Lcom/transsion/sniffer_load/R$id;->ll_transmitting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q:Landroid/widget/LinearLayout;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_title_transmitting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->r:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->progressBar_transmitting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->s:Landroid/widget/ProgressBar;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_transmitting_speed:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->t:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_download_size:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->u:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_transmitted_done:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->v:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_transmitting_cover:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->w:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->iv_transmitting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->x:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_working_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->y:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->rl_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->e1()V

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string v0, "download"

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->tv_size_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->o:Landroid/widget/TextView;

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget v0, Lcom/transsion/sniffer_load/R$attr;->OsBgPrimary:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$f;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    invoke-virtual {p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p2, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p1

    invoke-virtual {p1}, Lri4;->h()I

    move-result p1

    if-lez p1, :cond_1

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->o()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->b1(ZZ)V

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->d1()V

    iget-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->N:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->a1()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->addBottomBarShowStateObserver()V

    return-void
.end method

.method public final synthetic p1(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addObserverDownloadingTasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_TransmitMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->o()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->b1(ZZ)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateUiForDataChanged()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget-object p1, p1, Lcom/lzy/okgo/model/Progress;->imgUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->s1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final synthetic q1(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "item_click_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "out_data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->J:Lt6b;

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt6b;->I(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->J:Lt6b;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lt6b;->K()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    if-ne v0, p1, :cond_3

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->J:Lt6b;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lt6b;->J()V

    :cond_3
    :goto_0
    return-void
.end method

.method public r(FJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransmittingTaskProgress: isUpload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fraction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",,speed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_cloud_TransmitMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F1(FJ)V

    return-void
.end method

.method public final synthetic r1(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->notifyVideoBarShowStateChange(Z)V

    return-void
.end method

.method public final s1(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->w:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->transfer_ic_default_placeholder:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    :goto_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->selectAll(Z)V

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->i(Z)V

    :cond_0
    return-void
.end method

.method public final t1(Z)V
    .locals 5

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->t()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/transsion/sniffer_load/okdownload/NewDownloadTask;->progress:Lcom/lzy/okgo/model/Progress;

    iget v3, v2, Lcom/lzy/okgo/model/Progress;->downloadSource:I

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v2, Lcom/lzy/okgo/model/Progress;->status:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget-boolean v1, v2, Lcom/lzy/okgo/model/Progress;->isClient:Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-lez v0, :cond_7

    xor-int/lit8 p0, p1, 0x1

    invoke-static {p0, v0, v1}, Lp06;->V(III)V

    :cond_7
    :goto_1
    return-void
.end method

.method public updateShowUI()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->Z0()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->c1(Z)V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->D:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->h1()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->C1()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->E1(I)V

    return-void
.end method

.method public final v1(Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 2

    new-instance v0, Lt6b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lt6b;-><init>(Landroid/content/Context;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V

    iput-object v0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->J:Lt6b;

    new-instance p1, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;

    invoke-direct {p1, p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment$c;-><init>(Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;)V

    invoke-virtual {v0, p1}, Lt6b;->setOnOperateListener(Lt6b$b;)V

    return-void
.end method

.method public w1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    check-cast p1, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->j(Lcom/transsion/cloudcore/db/CloudTaskEntity;ZI)V

    return-void
.end method

.method public x1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->N:Z

    return-void
.end method

.method public y1(I)V
    .locals 5

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

    sget v3, Lcom/transsion/playercommon/R$string;->none_select:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-le p1, v1, :cond_1

    sget v3, Lcom/transsion/playercommon/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v3, Lcom/transsion/playercommon/R$string;->item:I

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

    iget-object v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->X0()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEditModeListener:Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->F:Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;

    invoke-virtual {v3}, Lcom/transsion/cloud/updownload/adapter/TransmittedAdapter;->g()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->H:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p1, p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_6
    return-void
.end method

.method public final z1(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDownloadProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->l:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TAG"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransmitMainFragment;->r:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
