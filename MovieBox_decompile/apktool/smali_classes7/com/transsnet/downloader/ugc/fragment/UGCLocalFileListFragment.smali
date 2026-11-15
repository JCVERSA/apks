.class public final Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;
.super Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0018\u0000 32\u00020\u0001:\u00014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\'\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u0017\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0016\u0010\'\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R.\u00102\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u001c /*\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010.0.0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101\u00a8\u00065"
    }
    d2 = {
        "Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;",
        "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;",
        "<init>",
        "()V",
        "",
        "loadData",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "list",
        "B1",
        "(Ljava/util/List;)V",
        "entity",
        "s1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "initViewModel",
        "initListener",
        "bean",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "S0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V",
        "onStart",
        "",
        "isShowTitleLayout",
        "getEmptyView",
        "(Z)Landroid/view/View;",
        "",
        "E0",
        "()Ljava/lang/String;",
        "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "l",
        "Lkotlin/Lazy;",
        "v1",
        "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "mLocalFileViewModel",
        "m",
        "Z",
        "isRequestPermission",
        "n",
        "Landroid/view/View;",
        "mNoPermissionEmptyView",
        "o",
        "mEmptyView",
        "Landroidx/activity/result/b;",
        "",
        "kotlin.jvm.PlatformType",
        "p",
        "Landroidx/activity/result/b;",
        "requestMultiplePermission",
        "q",
        "a",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final q:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$a;


# instance fields
.field private final l:Lkotlin/Lazy;

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private final p:Landroidx/activity/result/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->q:Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->l:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lf/h;

    .line 27
    .line 28
    invoke-direct {v0}, Lf/h;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/k0;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/k0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "registerForActivityResult(...)"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->p:Landroidx/activity/result/b;

    .line 46
    .line 47
    return-void
.end method

.method private static final A1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/helper/e;->c(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->loadData()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final B1(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->C0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "ugc_home"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x3

    .line 35
    if-le v1, v2, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v2, "ugc_sub"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 65
    .line 66
    new-instance v2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/ugc/adapter/c$b;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_2
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/c$d;->a:Lcom/transsnet/downloader/ugc/adapter/c$d;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a1(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 v0, 0x1

    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p1}, Lqi/b;->i()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-ne p1, v0, :cond_6

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->u0()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lqi/b;->k(Z)V

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b1()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static synthetic k1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->x1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->z1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final loadData()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->v1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->k(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic m1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->A1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->t1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->u1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->w1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->y1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s1(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$deleteItem$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$deleteItem$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final t1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "/home/movieFilter"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tabId"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final u1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sget-object v1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/a0;->p(Landroid/app/Activity;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->m:Z

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/a0;->x()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->p:Landroidx/activity/result/b;

    .line 36
    .line 37
    sget-object v0, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/baselib/helper/e;->a()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p0
.end method

.method private final v1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final w1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->B1(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final x1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 30
    .line 31
    instance-of v4, v3, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    check-cast v3, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    move v1, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    if-ltz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method private static final y1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string p3, "<unused var>"

    .line 2
    .line 3
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "transfer_file_2_mb"

    .line 7
    .line 8
    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    const/4 p4, 0x0

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const-string p1, "/download/transfer"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p2, 0x2

    .line 26
    invoke-static {p1, p0, p4, p2, p4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "delete"

    .line 31
    .line 32
    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    .line 39
    .line 40
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    sget p5, Lcom/transsnet/downloader/R$string;->cancel:I

    .line 45
    .line 46
    invoke-virtual {p3, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object p5

    .line 54
    sget v0, Lcom/transsnet/downloader/R$string;->delete:I

    .line 55
    .line 56
    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p5

    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget v1, Lcom/transsnet/downloader/R$string;->download_delete_tips:I

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/4 v3, 0x1

    .line 71
    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    aput-object v2, v3, v4

    .line 75
    .line 76
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, p3, p5, v0, p4}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance p3, Lcom/transsnet/downloader/ugc/fragment/m0;

    .line 85
    .line 86
    invoke-direct {p3, p2, p1}, Lcom/transsnet/downloader/ugc/fragment/m0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p3}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->s0(Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    const-string p1, "confirm_Dialog"

    .line 93
    .line 94
    invoke-virtual {p0, p2, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p0
.end method

.method private static final z1(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->s1(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public E0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->C0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ugc_sub"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "/download/ugc_my_downloaded"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "/download/ugc_downloaded"

    .line 17
    .line 18
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "_local_files"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string p3, "bean"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "view"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p2, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->h:Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;

    .line 12
    .line 13
    new-instance p3, Lkotlin/Pair;

    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Lcom/transsnet/downloader/R$string;->download_transfer_tips:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "transfer_file_2_mb"

    .line 26
    .line 27
    invoke-direct {p3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    aput-object p3, v0, v1

    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    new-instance p3, Lcom/transsnet/downloader/ugc/fragment/l0;

    .line 45
    .line 46
    invoke-direct {p3, p2, p1, p0}, Lcom/transsnet/downloader/ugc/fragment/l0;-><init>(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->s0(Lkotlin/jvm/functions/Function3;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "DownloadMoreDialog"

    .line 53
    .line 54
    invoke-virtual {p2, p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public getEmptyView(Z)Landroid/view/View;
    .locals 8

    .line 1
    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "requireContext(...)"

    .line 8
    .line 9
    const-string v1, "getString(...)"

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->o:Landroid/view/View;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/tn/lib/view/StateView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v2}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget v2, Lcom/transsnet/downloader/R$string;->download_no_historical_tips:I

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    const/4 v4, 0x6

    .line 44
    const/4 v5, 0x0

    .line 45
    const-string v6, ""

    .line 46
    .line 47
    move-object v2, p1

    .line 48
    invoke-virtual/range {v2 .. v7}, Lcom/tn/lib/view/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget v2, Lcom/transsnet/downloader/R$string;->download_empty_find_free_source:I

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/i0;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/ugc/fragment/i0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->o:Landroid/view/View;

    .line 76
    .line 77
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->o:Landroid/view/View;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->n:Landroid/view/View;

    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    new-instance p1, Lcom/tn/lib/view/StateView;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, v2}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    sget v0, Lcom/tn/lib/widget/R$mipmap;->ic_no_permission:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->updateNoContentResId(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget v2, Lcom/transsnet/downloader/R$string;->download_file_permission_tips:I

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v3, 0x4

    .line 118
    const/4 v4, 0x6

    .line 119
    const/4 v5, 0x0

    .line 120
    const-string v6, ""

    .line 121
    .line 122
    move-object v2, p1

    .line 123
    invoke-virtual/range {v2 .. v7}, Lcom/tn/lib/view/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget v2, Lcom/transsnet/downloader/R$string;->download_no_permission_btn:I

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/j0;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/ugc/fragment/j0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->n:Landroid/view/View;

    .line 151
    .line 152
    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->n:Landroid/view/View;

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-object p1
.end method

.method public initListener()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->initListener()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->initViewModel()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->v1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->i()Landroidx/lifecycle/b0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/g0;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/g0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->v1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->e()Landroidx/lifecycle/b0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/h0;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/h0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$b;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->m:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->m:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;->loadData()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
