.class public Lcom/transsion/audio/activities/AudioFilterFolderActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/audio/adapter/FilterBucketAdapter;

.field public O:Lcom/transsion/audio/databinding/DialogFilterBucketBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/audio/activities/AudioFilterFolderActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->M0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/audio/activities/AudioFilterFolderActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->I0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic D0(Lrc7;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->H0(Lrc7;)V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/audio/activities/AudioFilterFolderActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->K0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/audio/activities/AudioFilterFolderActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic G0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->J0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic H0(Lrc7;)V
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->T()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p0}, Lk93;->onComplete()V

    return-void
.end method

.method public static synthetic J0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioFilterFolderActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initData()V
    .locals 2

    new-instance v0, Lvo;

    invoke-direct {v0}, Lvo;-><init>()V

    invoke-static {v0}, Lmc7;->h(Led7;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

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

    new-instance v1, Lwo;

    invoke-direct {v1, p0}, Lwo;-><init>(Lcom/transsion/audio/activities/AudioFilterFolderActivity;)V

    new-instance p0, Lxo;

    invoke-direct {p0}, Lxo;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method private initView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->O:Lcom/transsion/audio/databinding/DialogFilterBucketBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterBucketBinding;->c:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v1, Lyo;

    invoke-direct {v1, p0}, Lyo;-><init>(Lcom/transsion/audio/activities/AudioFilterFolderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/transsion/audio/adapter/FilterBucketAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/audio/adapter/FilterBucketAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->N:Lcom/transsion/audio/adapter/FilterBucketAdapter;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->O:Lcom/transsion/audio/databinding/DialogFilterBucketBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterBucketBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->O:Lcom/transsion/audio/databinding/DialogFilterBucketBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterBucketBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->N:Lcom/transsion/audio/adapter/FilterBucketAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->O:Lcom/transsion/audio/databinding/DialogFilterBucketBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterBucketBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->N:Lcom/transsion/audio/adapter/FilterBucketAdapter;

    new-instance v1, Lzo;

    invoke-direct {v1, p0}, Lzo;-><init>(Lcom/transsion/audio/activities/AudioFilterFolderActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->N:Lcom/transsion/audio/adapter/FilterBucketAdapter;

    new-instance v1, Lap;

    invoke-direct {v1, p0}, Lap;-><init>(Lcom/transsion/audio/activities/AudioFilterFolderActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    const-string p0, "vd_audio_filt_fd_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic I0(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->N:Lcom/transsion/audio/adapter/FilterBucketAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic K0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    return-void
.end method

.method public final synthetic L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    const-string p2, "vd_audio_filt_fd_cover_cl"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->N0(Lcom/transsion/dbdata/beans/media/MediaBucket;)V

    return-void
.end method

.method public final synthetic M0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->p(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->C(Ljava/lang/String;)V

    invoke-static {v0}, Luy5;->i(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Luy5;->i(I)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->N:Lcom/transsion/audio/adapter/FilterBucketAdapter;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x455

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final N0(Lcom/transsion/dbdata/beans/media/MediaBucket;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    const-string v3, "bucket_fragment_buicket_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bucket_fragment_buicket_name"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getParentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bucket_fragment_buicket_path"

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->getParentPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio_drop_animation_by_itself"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p1, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audio/databinding/DialogFilterBucketBinding;->c(Landroid/view/LayoutInflater;)Lcom/transsion/audio/databinding/DialogFilterBucketBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->O:Lcom/transsion/audio/databinding/DialogFilterBucketBinding;

    invoke-virtual {p1}, Lcom/transsion/audio/databinding/DialogFilterBucketBinding;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->initView()V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFilterFolderActivity;->initData()V

    return-void
.end method
