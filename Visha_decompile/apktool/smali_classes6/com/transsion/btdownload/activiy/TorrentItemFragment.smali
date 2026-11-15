.class public Lcom/transsion/btdownload/activiy/TorrentItemFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Landroid/view/View;

.field public m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

.field public n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

.field public o:Lcom/transsion/playercommon/widgets/AppFootActionBar;

.field public p:Landroid/widget/LinearLayout;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/CheckBox;

.field public u:Landroidx/recyclerview/widget/RecyclerView;

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method private A0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->t:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->t:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private C0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->o:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->E0()V

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->A0()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->s:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->C(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_5

    iget p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->v:I

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/bt_download/R$color;->transparent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_4
    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private D0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->j0()V

    return-void
.end method

.method private E0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {v0}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->s()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/bt_download/R$string;->none_select:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v1, Lcom/transsion/bt_download/R$string;->item:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/bt_download/R$string;->items:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic P(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->l0(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->v0(Ljava/util/Set;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->p0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->w0(Ljava/util/Set;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->r0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->u0(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->s0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->y0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic a0(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->z0(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->x0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->o0(I)V

    return-void
.end method

.method public static synthetic d0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->t0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic e0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/ui/TorrentItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    return-object p0
.end method

.method public static bridge synthetic f0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    return-object p0
.end method

.method public static bridge synthetic g0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->A0()V

    return-void
.end method

.method public static bridge synthetic h0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->B0()V

    return-void
.end method

.method public static bridge synthetic i0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->E0()V

    return-void
.end method

.method private j0()V
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

    new-instance v1, Lota;

    invoke-direct {v1}, Lota;-><init>()V

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

    new-instance v1, Lpta;

    invoke-direct {v1, p0}, Lpta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method private k0(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->l:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->l:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/transsion/bt_download/R$id;->activity_empty_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->l:Landroid/view/View;

    sget v2, Lcom/transsion/bt_download/R$id;->lottie_no_videos_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/common/R$drawable;->ic_file_empty_illustration:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->l:Landroid/view/View;

    sget v2, Lcom/transsion/bt_download/R$id;->text_no_videos:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->l:Landroid/view/View;

    sget v3, Lcom/transsion/bt_download/R$id;->add_video_tv:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/bt_download/R$string;->go_download:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lqta;

    invoke-direct {v3, p0}, Lqta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/bt_download/R$string;->file_empty:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "vd_dl_manager_bt_main_godl_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->D0()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->s:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-nez p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->l:Landroid/view/View;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public static synthetic l0(Landroidx/fragment/app/FragmentActivity;)Ljava/lang/Long;
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

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->t:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->y()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->E()V

    :goto_0
    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->E0()V

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->A0()V

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->B0()V

    return-void
.end method

.method private synthetic q0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->G(Z)V

    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private synthetic s0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->k0(Z)V

    return-void
.end method

.method public static synthetic u0(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lpk0;->e(Ljava/util/List;Z)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic w0(Ljava/util/Set;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p1}, Lmc7;->E(Ljava/lang/Iterable;)Lmc7;

    move-result-object p2

    new-instance p3, Lgta;

    invoke-direct {p3}, Lgta;-><init>()V

    invoke-virtual {p2, p3}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    invoke-virtual {p2}, Lmc7;->j0()Lxm9;

    move-result-object p2

    new-instance p3, Lhta;

    invoke-direct {p3}, Lhta;-><init>()V

    invoke-virtual {p2, p3}, Lxm9;->l(Lt74;)Lxm9;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p2

    new-instance p3, Lita;

    invoke-direct {p3, p0, p1}, Lita;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;)V

    invoke-virtual {p2, p3}, Lxm9;->o(Lzf1;)Lrc2;

    return-void
.end method

.method private static synthetic x0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic y0(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->G(Z)V

    return-void
.end method

.method public static synthetic z0(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final B0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->o:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->s()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setAllEnable(Z)V

    :cond_1
    return-void
.end method

.method public F0(Ljava/util/Set;)V
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

    new-instance v2, Lrta;

    invoke-direct {v2, p0, p1}, Lrta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    sget p1, Lcom/transsion/bt_download/R$string;->cancel:I

    new-instance v1, Leta;

    invoke-direct {v1}, Leta;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    new-instance p1, Lfta;

    invoke-direct {p1, p0}, Lfta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->r(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/d$a;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public inflateOperationBar()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->o:Lcom/transsion/playercommon/widgets/AppFootActionBar;

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

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->o:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    new-instance v1, Lnta;

    invoke-direct {v1, p0}, Lnta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->o:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->setListFlag(I)V

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->o:Lcom/transsion/playercommon/widgets/AppFootActionBar;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->applyEditFootBarBottomInset(Landroid/view/View;)V

    :cond_0
    return-void
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

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->s:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final synthetic n0(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v0

    const-string v1, "www.the-piratebay.com"

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setType(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;Z)V

    const-string p0, "vd_dl_manager_bt_main_godl_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic o0(I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p1}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->t()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->F0(Ljava/util/Set;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$attr;->foot_bar_background:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->v:I

    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/bt_download/R$layout;->fragment_torrent_download:I

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->K()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->M()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/bt_download/R$id;->ll_title_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->p:Landroid/widget/LinearLayout;

    sget p2, Lcom/transsion/bt_download/R$id;->ll_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->q:Landroid/widget/LinearLayout;

    sget p2, Lcom/transsion/bt_download/R$id;->tv_title_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->r:Landroid/widget/TextView;

    sget p2, Lcom/transsion/bt_download/R$id;->cb_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->t:Landroid/widget/CheckBox;

    sget p2, Lcom/transsion/bt_download/R$id;->rv_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/bt_download/R$id;->tv_size_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->s:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->D0()V

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->t:Landroid/widget/CheckBox;

    new-instance v0, Ldta;

    invoke-direct {v0, p0}, Ldta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/bt_download/R$id;->iv_close_select:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Ljta;

    invoke-direct {v0, p0}, Ljta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/bt_download/R$id;->iv_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lkta;

    invoke-direct {p2, p0}, Lkta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->r(Lcom/transsion/playercommon/activities/BaseActivity;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->q()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Llta;

    invoke-direct {v0, p0}, Llta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lmta;

    invoke-direct {v0, p0}, Lmta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->D(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p1, Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->u:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    new-instance p2, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;

    invoke-direct {p2, p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    invoke-virtual {p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->B(Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V

    return-void
.end method

.method public final synthetic t0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->C0(Z)V

    return-void
.end method

.method public final synthetic v0(Ljava/util/Set;Ljava/lang/Boolean;)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->m:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->G(Z)V

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->n:Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
