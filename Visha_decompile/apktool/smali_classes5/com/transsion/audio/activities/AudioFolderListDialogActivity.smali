.class public Lcom/transsion/audio/activities/AudioFolderListDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field public O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

.field public P:Ljava/util/ArrayList;

.field public Q:Lcom/transsion/audio/adapter/AudioItemAdapter;

.field public R:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->P:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/activities/AudioFolderListDialogActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->n0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic g0(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->j0(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->k0(Ljava/lang/Throwable;)V

    return-void
.end method

.method private initData()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bucket_fragment_buicket_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    iget-object v1, v1, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bucket_fragment_buicket_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->N:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bucket_fragment_buicket_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->Q:Lcom/transsion/audio/adapter/AudioItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->X(Z)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->Q:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->Q:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    iget-object v1, v1, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->i0()V

    return-void
.end method

.method public static synthetic j0(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lao;->S(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static synthetic k0(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AudioFolderListDialogActivity"

    const-string v1, "Error in fetchAudioItems"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private l0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->R:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private m0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->R:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->R:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->text_no_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$string;->visha_not_file_hide_by_filter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->R:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getDragHandlerVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSupportGesture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i0()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bucket_fragment_buicket_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bucket_fragment_buicket_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbq;

    invoke-direct {v3, v0, v1, v2}, Lbq;-><init>(JLjava/lang/String;)V

    invoke-static {v3}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcq;

    invoke-direct {v1, p0}, Lcq;-><init>(Lcom/transsion/audio/activities/AudioFolderListDialogActivity;)V

    new-instance p0, Ldq;

    invoke-direct {p0}, Ldq;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public initView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->c(Landroid/view/LayoutInflater;)Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->O:Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;

    invoke-virtual {v0}, Lcom/transsion/audio/databinding/DialogFilterFolderAudioListBinding;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->initData()V

    const-string p0, "vd_audio_filt_fd_cover_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public final n0(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->Q:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->Q:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->l0()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->m0()V

    :cond_2
    :goto_1
    return-void
.end method
