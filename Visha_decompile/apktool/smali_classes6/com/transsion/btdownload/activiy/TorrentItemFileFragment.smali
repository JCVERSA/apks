.class public Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:J

.field public l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

.field public m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

.field public n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

.field public o:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/CheckBox;

.field public x:Landroidx/recyclerview/widget/RecyclerView;

.field public y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private C0(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->o:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->p:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->inflateOperationBar()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->openFootOperationBar()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->closeFootOperationBar()V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_3

    iget v3, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->A:I

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/bt_download/R$color;->transparent:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->E0()V

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->B0()V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iget-object v1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {v1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->r()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setAllEnable(Z)V

    :cond_6
    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->D(Z)V

    return-void
.end method

.method public static synthetic P(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->A0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic S([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->v0([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method

.method public static synthetic T()V
    .locals 0

    invoke-static {}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->z0()V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Landroidx/core/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->s0(Landroidx/core/util/Pair;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->o0(I)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->t0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->r0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y()V
    .locals 0

    invoke-static {}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->u0()V

    return-void
.end method

.method public static synthetic Z(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->w0(Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b0(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n0(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->p0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->x0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic e0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)Lcom/transsion/btdownload/activiy/FileSelectViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    return-object p0
.end method

.method public static bridge synthetic f0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->z:Z

    return-void
.end method

.method public static bridge synthetic g0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->B0()V

    return-void
.end method

.method public static bridge synthetic h0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->C0(Z)V

    return-void
.end method

.method public static bridge synthetic i0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->E0()V

    return-void
.end method

.method public static bridge synthetic j0(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->G0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method

.method private k0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lxsa;

    invoke-direct {v1}, Lxsa;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lysa;

    invoke-direct {v1, p0}, Lysa;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static l0()Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;
    .locals 1

    new-instance v0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    invoke-direct {v0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;-><init>()V

    return-object v0
.end method

.method public static synthetic n0(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Long;
    .locals 2

    sget-object p0, Lyx2;->j:Ljava/io/File;

    invoke-static {p0}, Lb23;->l(Ljava/io/File;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic p0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->w:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->w()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->F()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->E0()V

    return-void
.end method

.method private synthetic q0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->c(Z)V

    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic u0()V
    .locals 0

    return-void
.end method

.method public static synthetic v0([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 4

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getIndex()I

    move-result v0

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    aput-object v1, p0, v0

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getReceivedBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/File;

    sget-object v0, Lyx2;->j:Ljava/io/File;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static synthetic x0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic y0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public static synthetic z0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic A0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->ingoreClickEvent()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->B:J

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/playercommon/data/FileOperateItem;

    invoke-virtual {p3}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p4

    const/4 p5, 0x5

    if-ne p4, p5, :cond_1

    new-instance p4, Ljava/util/HashSet;

    const/4 p5, 0x1

    invoke-direct {p4, p5}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p4}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->H0(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    new-instance p4, Ltsa;

    invoke-direct {p4}, Ltsa;-><init>()V

    invoke-virtual {p0, p1, p4}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->F0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V

    :goto_0
    invoke-virtual {p3}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_2

    invoke-virtual {p3}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    invoke-virtual {p3}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    :cond_2
    return-void
.end method

.method public final B0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {v0}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->w:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->w:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public final D0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->k0()V

    return-void
.end method

.method public final E0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {v0}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->r()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget v2, Lcom/transsion/bt_download/R$string;->none_select:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    sget v2, Lcom/transsion/bt_download/R$string;->item:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/bt_download/R$string;->items:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz p0, :cond_3

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setAllEnable(Z)V

    :cond_3
    return-void
.end method

.method public F0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V
    .locals 8

    new-instance v0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    invoke-direct {v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;-><init>()V

    sget v1, Lcom/transsion/playercommon/R$layout;->dialog_details:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->c(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a()Lcom/transsion/playercommon/fragments/AlertDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->ok:I

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->b(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    move-result-object v0

    sget v3, Lcom/transsion/playercommon/R$string;->info:I

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->d(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    const-string v0, "detail_dialog_fragment_tag"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    invoke-virtual {v1, p2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->setOnDialogDismissListener(Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    sget v0, Lcom/transsion/playercommon/R$id;->rv_bucket_fragment_info:I

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;

    sget v1, Lcom/transsion/playercommon/R$layout;->item_bucket_fragment_info:I

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;-><init>(I)V

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->name:I

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    new-instance v1, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->size:I

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v5, p0, v3, v4}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/transsion/playercommon/data/InfoBean;

    sget v1, Lcom/transsion/playercommon/R$string;->path:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lyx2;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final G0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 5

    new-instance v0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/bt_download/R$layout;->file_operate_list:I

    sget v3, Lcom/transsion/bt_download/R$layout;->audio_playlist_bucket_list:I

    const-string v4, "bt_file_dialog"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance v1, Lzsa;

    invoke-direct {v1, p0, p1}, Lzsa;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;)V

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->g()V

    new-instance p0, Lata;

    invoke-direct {p0}, Lata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->setDismissListener2(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$b;)V

    return-void
.end method

.method public H0(Ljava/util/Set;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/bt_download/R$string;->delete_files_notice:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/bt_download/R$string;->delete_file_notice:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    :goto_0
    sget v1, Lcom/transsion/bt_download/R$string;->delete:I

    new-instance v2, Lcta;

    invoke-direct {v2, p0, p1}, Lcta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    sget p0, Lcom/transsion/bt_download/R$string;->cancel:I

    new-instance p1, Lpsa;

    invoke-direct {p1}, Lpsa;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    new-instance p0, Lqsa;

    invoke-direct {p0}, Lqsa;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->r(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/d$a;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public I0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 5

    sget v0, Lcom/transsion/magicvideo/R$id;->media_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_operate_list:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/playercommon/data/FileOperateItem;

    sget v2, Lcom/transsion/bt_download/R$drawable;->ic_info:I

    sget v3, Lcom/transsion/bt_download/R$string;->info:I

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/playercommon/data/FileOperateItem;-><init>(III)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance p2, Lrsa;

    invoke-direct {p2, p0, p3, p1}, Lrsa;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public inflateOperationBar()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->bottom_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/AppFootActionBar;

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->initShow(Z)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    new-instance v1, Lbta;

    invoke-direct {v1, p0}, Lbta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setListFlag(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->y:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public ingoreClickEvent()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->B:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic m0(Ljava/lang/Long;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lb23;->h()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/bt_download/R$string;->download_size_info:I

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    const/16 v6, 0x11

    invoke-virtual {v2, v4, v3, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, p1, v1, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->v:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final synthetic o0(I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->s()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->H0(Ljava/util/Set;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->c(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$attr;->foot_bar_background:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->A:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    sget p0, Lcom/transsion/bt_download/R$layout;->fragment_torrent_file_item:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->J()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->L(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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
    sget p2, Lcom/transsion/bt_download/R$id;->ll_title_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->o:Landroid/widget/LinearLayout;

    sget p2, Lcom/transsion/bt_download/R$id;->ll_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->p:Landroid/widget/LinearLayout;

    sget p2, Lcom/transsion/bt_download/R$id;->iv_close_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->r:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/bt_download/R$id;->iv_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->s:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/bt_download/R$id;->tv_title_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->t:Landroid/widget/TextView;

    sget p2, Lcom/transsion/bt_download/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->u:Landroid/widget/TextView;

    sget p2, Lcom/transsion/bt_download/R$id;->cb_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->w:Landroid/widget/CheckBox;

    sget p2, Lcom/transsion/bt_download/R$id;->rv_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/bt_download/R$id;->tv_size_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->v:Landroid/widget/TextView;

    sget p2, Lcom/transsion/bt_download/R$id;->ll_size_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->D0()V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->w:Landroid/widget/CheckBox;

    new-instance p2, Losa;

    invoke-direct {p2, p0}, Losa;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->r:Landroid/widget/ImageView;

    new-instance p2, Lusa;

    invoke-direct {p2, p0}, Lusa;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->s:Landroid/widget/ImageView;

    new-instance p2, Lvsa;

    invoke-direct {p2, p0}, Lvsa;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$a;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->b(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p1, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->stateCode:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-static {v0}, Lpx9;->b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {v1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$b;

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$b;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lwsa;

    invoke-direct {v0, p0}, Lwsa;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    new-instance p2, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$c;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    new-instance p2, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$d;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    new-instance p2, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$e;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildLongClickListener;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    new-instance p2, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$f;

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment$f;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->C(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpk0;->j(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p1

    invoke-interface {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->isPaused()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->F(Z)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->u:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object p0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final synthetic s0(Landroidx/core/util/Pair;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->z:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_8

    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    check-cast v5, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getFilePriority()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    move-result-object v5

    invoke-virtual {v5}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v5

    sget-object v6, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->getReceivedBytes()J

    move-result-wide v5

    iget-object v7, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FileTree;->size()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_4

    iget-object v5, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    aget-object v5, v5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    aget-object v5, v5, v2

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/transsion/btdownload/TorrentHeaderFileTree;

    invoke-direct {v2}, Lcom/transsion/btdownload/TorrentHeaderFileTree;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v3, :cond_6

    new-instance v2, Lcom/transsion/btdownload/TorrentingFileTree;

    invoke-direct {v2}, Lcom/transsion/btdownload/TorrentingFileTree;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-lez v4, :cond_7

    new-instance v0, Lcom/transsion/btdownload/TorrentedFileTree;

    invoke-direct {v0}, Lcom/transsion/btdownload/TorrentedFileTree;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {v0, v4}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->z(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {v0, v3}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->A(I)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->setNewData(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public final synthetic t0(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->I0(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method

.method public final synthetic w0(Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p3

    invoke-virtual {p3, p2}, Lpk0;->j(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p3

    invoke-interface {p3}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lssa;

    invoke-direct {v0, p3}, Lssa;-><init>([Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lpk0;->p(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->n:Lcom/transsion/btdownload/activiy/FileSelectViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/FileSelectViewModel;->c(Z)V

    return-void
.end method
