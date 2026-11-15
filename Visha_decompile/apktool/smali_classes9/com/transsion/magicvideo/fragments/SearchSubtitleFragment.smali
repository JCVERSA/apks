.class public Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

.field public o:Landroid/view/View;

.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Ljava/util/ArrayList;

.field public r:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Lcom/transsion/playercommon/utils/storage/MountPointManager;

.field public w:Landroid/os/Handler;

.field public x:Z

.field public y:Ljava/lang/Runnable;

.field public z:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    new-instance v0, Lk59;

    invoke-direct {v0, p0}, Lk59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->y:Ljava/lang/Runnable;

    new-instance v0, Ll59;

    invoke-direct {v0, p0}, Ll59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->z:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->c0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->d0(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->a0(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->g0()V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->h0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->b0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->f0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->e0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static i0(Ljava/lang/String;)Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;

    invoke-direct {v0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subtitle_media_path"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private initList()V
    .locals 3

    new-instance v0, Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    sget v1, Lcom/transsion/magicvideo/R$layout;->item_subtitle_list:I

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->r:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->p:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->r:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->Y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->r:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    new-instance v1, Lm59;

    invoke-direct {v1, p0}, Lm59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private initTitle()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->s:Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$string;->select_local_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->o:Landroid/view/View;

    new-instance v1, Lh59;

    invoke-direct {v1, p0}, Lh59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final X()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->x:Z

    const-string v2, "/storage"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->Y(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->n:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->refreshTab(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->x:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->Y(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Li59;

    invoke-direct {v1, p0, p1}, Li59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;Ljava/lang/String;)V

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

    new-instance v0, Lj59;

    invoke-direct {v0, p0}, Lj59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final Z()V
    .locals 4

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    const-wide/16 v1, 0x320

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ln59;

    invoke-direct {v1, p0}, Ln59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lo59;

    invoke-direct {v1, p0}, Lo59;-><init>(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic a0(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->m0(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic b0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->r:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->n0()V

    return-void
.end method

.method public final synthetic c0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/FileInfo;

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileInfo;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->Y(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->n:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->refreshTab(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "subtitle_result"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->l0(ZLandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic d0(Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;)Ljava/lang/Boolean;
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->v:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->k(Landroid/content/Context;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic e0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->X()V

    return-void
.end method

.method public final synthetic f0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->l0(ZLandroid/content/Intent;)V

    return-void
.end method

.method public final synthetic g0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->Z()V

    return-void
.end method

.method public final synthetic h0(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->Y(Ljava/lang/String;)V

    return-void
.end method

.method public j0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->w:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->y:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public k0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    return-object p0
.end method

.method public final l0(ZLandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final m0(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "/storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    new-instance v2, Lcom/transsion/playercommon/data/FileInfo;

    iget-object v3, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/playercommon/data/FileInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/transsion/playercommon/data/FileInfo;->setIsMountPoint(Z)V

    iget v0, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->c:I

    iput v0, v2, Lcom/transsion/playercommon/data/FileInfo;->srcId:I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lhk3;->e:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    new-instance v5, Lcom/transsion/playercommon/data/FileInfo;

    invoke-direct {v5, v3}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    new-instance v5, Lcom/transsion/playercommon/data/FileInfo;

    invoke-direct {v5, v3}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public n0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->u:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$id;->file_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->u:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->u:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->u:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->p:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "subtitle_media_path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lav3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->m:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->v:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->k(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->w:Landroid/os/Handler;

    const-string p1, "/storage"

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->x:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/transsion/magicvideo/R$layout;->search_subtitles_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->t:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->w:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->X()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->bv_path_navigation:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->n:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->z:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->addItemClickListener(Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;)V

    sget p2, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->o:Landroid/view/View;

    sget p2, Lcom/transsion/magicvideo/R$id;->rv_subtitle_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->p:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/transsion/magicvideo/R$id;->title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->s:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->initTitle()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->initList()V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->n:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->refreshTab(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;->k0(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/magicvideo/fragments/SearchSubtitleFragment;

    move-result-object p0

    return-object p0
.end method
