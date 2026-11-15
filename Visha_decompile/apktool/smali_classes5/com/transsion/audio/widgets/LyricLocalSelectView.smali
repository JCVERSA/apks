.class public Lcom/transsion/audio/widgets/LyricLocalSelectView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;
    }
.end annotation


# static fields
.field public static final LYRIC_EXTENSION:[Ljava/lang/String;

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "LyricLocalSelectView"


# instance fields
.field private lastItemCount:I

.field private listener:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

.field private mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

.field private mContext:Landroid/content/Context;

.field private mCurFilePath:Ljava/lang/String;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field public mExtensions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileInfoDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/playercommon/data/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAllSubtitleMode:Z

.field private mIsRootPath:Z

.field private mLayoutManager:Lcom/transsion/utils/CustomLinearLayoutManager;

.field private mListener:Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;

.field private mMountPointManager:Lcom/transsion/playercommon/utils/storage/MountPointManager;

.field private mSubtitleFileListAdapter:Lcom/transsion/audio/adapter/LyricAdapter;

.field private mSubtitleListRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mTrackValue:I

.field private mView:Landroid/view/View;

.field private subFileCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, ".lrc"

    const-string v1, ".krc"

    const-string v2, ".srt"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->LYRIC_EXTENSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mDataList:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lastItemCount:I

    .line 8
    iput p2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->subFileCount:I

    .line 9
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mExtensions:Ljava/util/HashSet;

    .line 10
    new-instance p2, Ldv5;

    invoke-direct {p2, p0}, Ldv5;-><init>(Lcom/transsion/audio/widgets/LyricLocalSelectView;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->listener:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    .line 11
    iput-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/LyricLocalSelectView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lambda$checkPathItems$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/LyricLocalSelectView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lambda$new$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/LyricLocalSelectView;Ljava/lang/String;Lcom/transsion/audio/widgets/LyricLocalSelectView;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lambda$checkPathItems$2(Ljava/lang/String;Lcom/transsion/audio/widgets/LyricLocalSelectView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private checkPathItems(Ljava/lang/String;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mCurFilePath:Ljava/lang/String;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    new-instance v0, Lfv5;

    invoke-direct {v0, p0, p1}, Lfv5;-><init>(Lcom/transsion/audio/widgets/LyricLocalSelectView;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lgv5;

    invoke-direct {p2, p0}, Lgv5;-><init>(Lcom/transsion/audio/widgets/LyricLocalSelectView;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/widgets/LyricLocalSelectView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lambda$initSubtitleListAdapter$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->lyric_local_select_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->bv_path_navigation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iget-object v1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->listener:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->addItemClickListener(Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    sget v1, Lcom/transsion/audio/R$color;->os_text_tertiary_color:I

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->rv_subtitle_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mMountPointManager:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->k(Landroid/content/Context;)V

    new-instance v0, Lcom/transsion/audio/adapter/LyricAdapter;

    invoke-direct {v0}, Lcom/transsion/audio/adapter/LyricAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleFileListAdapter:Lcom/transsion/audio/adapter/LyricAdapter;

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleListRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mLayoutManager:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mExtensions:Ljava/util/HashSet;

    sget-object v1, Lcom/transsion/audio/widgets/LyricLocalSelectView;->LYRIC_EXTENSION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->initSubtitleListAdapter()V

    return-void
.end method

.method private initSubtitleListAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleListRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleFileListAdapter:Lcom/transsion/audio/adapter/LyricAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleFileListAdapter:Lcom/transsion/audio/adapter/LyricAdapter;

    new-instance v1, Lev5;

    invoke-direct {v1, p0}, Lev5;-><init>(Lcom/transsion/audio/widgets/LyricLocalSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$checkPathItems$2(Ljava/lang/String;Lcom/transsion/audio/widgets/LyricLocalSelectView;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->updateDataList(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$checkPathItems$3(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleFileListAdapter:Lcom/transsion/audio/adapter/LyricAdapter;

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->updateEmptyView()V

    return-void
.end method

.method private synthetic lambda$initSubtitleListAdapter$0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

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

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->checkPathItems(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->refreshTab(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mListener:Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;->selectLyric(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->getItemViewCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lastItemCount:I

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->checkPathItems(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->getItemViewCount()I

    move-result v0

    :cond_0
    iget p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lastItemCount:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    const-string v1, "vd_cp_setting_sub_path_back"

    const-string v2, "tier"

    invoke-static {v1, v2, p1}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    iput v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lastItemCount:I

    return-void
.end method

.method private updateBreadcrumbsViewVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mIsAllSubtitleMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateDataList(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "."

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->subFileCount:I

    const-string v2, "/storage"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mIsRootPath:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

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

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    new-instance v1, Lcom/transsion/playercommon/data/FileInfo;

    iget-object v2, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/FileInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/transsion/playercommon/data/FileInfo;->setIsMountPoint(Z)V

    iget v0, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->c:I

    iput v0, v1, Lcom/transsion/playercommon/data/FileInfo;->srcId:I

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataList: root: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "LyricLocalSelectView"

    invoke-static {v4, v2}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object v5, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/Path;

    new-array v7, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v7}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mExtensions:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->subFileCount:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->subFileCount:I

    iget-object v7, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    new-instance v8, Lcom/transsion/playercommon/data/FileInfo;

    invoke-direct {v8, v6}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    new-instance v8, Lcom/transsion/playercommon/data/FileInfo;

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get file list from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_5
    return v3
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setCurrentPath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->checkPathItems(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->refreshTab(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mBreadcrumbsView:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->getItemViewCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->lastItemCount:I

    return-void
.end method

.method public setListener(Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mListener:Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;

    return-void
.end method

.method public updateEmptyView()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/audio/R$id;->file_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mEmptyView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mFileInfoDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mSubtitleListRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/LyricLocalSelectView;->mEmptyView:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->text_no_files:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/audio/R$color;->os_text_secondary_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method
