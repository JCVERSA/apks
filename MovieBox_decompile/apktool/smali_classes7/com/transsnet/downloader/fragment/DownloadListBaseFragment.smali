.class public abstract Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lbx/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u001f\u0010\u001c\u001a\u00020\u00052\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H&\u00a2\u0006\u0004\u0008&\u0010\'J\'\u0010,\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&\u00a2\u0006\u0004\u0008,\u0010-J\'\u0010.\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&\u00a2\u0006\u0004\u0008.\u0010-J\'\u0010/\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&\u00a2\u0006\u0004\u0008/\u0010-J\u000f\u00100\u001a\u00020\u000fH&\u00a2\u0006\u0004\u00080\u0010\u0011J\u0011\u00102\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00082\u00103R\u001a\u00107\u001a\u00020\u000f8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u0010\u0011R$\u0010=\u001a\u0004\u0018\u00010$8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010\'R\u001b\u0010A\u001a\u0002018DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u00103\u00a8\u0006B"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lbx/v;",
        "<init>",
        "()V",
        "",
        "u0",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "p0",
        "(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "t0",
        "(Landroid/view/LayoutInflater;)Lbx/v;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "list",
        "D0",
        "(Ljava/util/List;)V",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Lcom/transsnet/downloader/adapter/k;",
        "adapter",
        "o0",
        "(Lcom/transsnet/downloader/adapter/k;)V",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "B0",
        "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V",
        "A0",
        "C0",
        "getPageName",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "q0",
        "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "a",
        "Ljava/lang/String;",
        "getTAG",
        "TAG",
        "b",
        "Lcom/transsnet/downloader/adapter/k;",
        "r0",
        "()Lcom/transsnet/downloader/adapter/k;",
        "setMAdapter",
        "mAdapter",
        "c",
        "Lkotlin/Lazy;",
        "s0",
        "mViewModel",
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


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/transsnet/downloader/adapter/k;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "DownloadList_"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->a:Ljava/lang/String;

    .line 30
    .line 31
    const-class v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$2;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->c:Lkotlin/Lazy;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic j0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->v0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic m0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->y0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->w0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    instance-of v0, p1, Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private final u0()V
    .locals 11

    .line 1
    new-instance v6, Lcom/transsnet/downloader/fragment/c0;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/c0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    .line 4
    .line 5
    .line 6
    sget-object v7, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v8, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v9, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move-object v3, v10

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    new-instance v6, Lcom/transsnet/downloader/fragment/d0;

    .line 44
    .line 45
    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/d0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 53
    .line 54
    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object v1, p0

    .line 72
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private static final v0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const-string v2, "LocalVideo-d"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getResourceId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v7, "observeEvent resourceId:"

    .line 28
    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ",readProgress: "

    .line 36
    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", isSeries: "

    .line 44
    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x4

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 62
    .line 63
    const/4 v1, -0x1

    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move v3, v2

    .line 78
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getResourceId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_0

    .line 103
    .line 104
    move v1, v3

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    instance-of v0, p0, Lcom/transsnet/downloader/fragment/DownloadedListFragment;

    .line 119
    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    if-gez v1, :cond_2

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const/4 p1, 0x0

    .line 129
    const/4 v0, 0x1

    .line 130
    invoke-static {p0, v2, v0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->N(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p0

    .line 136
    :cond_2
    if-ltz v1, :cond_9

    .line 137
    .line 138
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 139
    .line 140
    if-eqz v0, :cond_3

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    :cond_3
    if-ge v1, v2, :cond_9

    .line 147
    .line 148
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 163
    .line 164
    if-nez v0, :cond_4

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 168
    .line 169
    const-string v3, "LocalVideo-d"

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v6, "observeEvent index:"

    .line 181
    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v6, ", "

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    const/4 v6, 0x4

    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v5, 0x0

    .line 203
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    .line 207
    .line 208
    .line 209
    move-result-wide v2

    .line 210
    const-wide/16 v4, 0x0

    .line 211
    .line 212
    cmp-long v2, v2, v4

    .line 213
    .line 214
    if-ltz v2, :cond_5

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    invoke-virtual {v0, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 221
    .line 222
    .line 223
    :cond_5
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    .line 224
    .line 225
    .line 226
    move-result-wide v2

    .line 227
    cmp-long v2, v2, v4

    .line 228
    .line 229
    if-ltz v2, :cond_6

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 240
    .line 241
    .line 242
    :cond_6
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getRefreshItemAll()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    if-eqz p1, :cond_7

    .line 247
    .line 248
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 249
    .line 250
    if-eqz p0, :cond_9

    .line 251
    .line 252
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_7
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 257
    .line 258
    if-eqz p0, :cond_9

    .line 259
    .line 260
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .line 266
    return-object p0

    .line 267
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 271
    .line 272
    return-object p0
.end method

.method private static final w0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getResourceId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getSubjectId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, -0x1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move v3, v1

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getSubjectId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    move v3, v2

    .line 81
    :goto_2
    if-ltz v3, :cond_4

    .line 82
    .line 83
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 84
    .line 85
    if-eqz p0, :cond_7

    .line 86
    .line 87
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getResourceId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    move v2, v1

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    :goto_4
    if-ltz v2, :cond_7

    .line 137
    .line 138
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 139
    .line 140
    if-eqz p0, :cond_7

    .line 141
    .line 142
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 143
    .line 144
    .line 145
    :cond_7
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    return-object p0
.end method

.method private static final x0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    check-cast p1, Lcom/transsnet/downloader/adapter/k;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->B0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final y0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    check-cast p1, Lcom/transsnet/downloader/adapter/k;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->A0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final z0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 4

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/transsnet/downloader/adapter/k;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->C0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method


# virtual methods
.method public abstract A0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
.end method

.method public abstract B0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
.end method

.method public abstract C0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
.end method

.method public D0(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public abstract getPageName()Ljava/lang/String;
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->t0(Landroid/view/LayoutInflater;)Lbx/v;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->u0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsnet/downloader/adapter/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->q0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/adapter/k;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$a;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/transsnet/downloader/fragment/z;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/z;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->o0(Lcom/transsnet/downloader/adapter/k;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/transsnet/downloader/fragment/a0;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/a0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/transsnet/downloader/fragment/b0;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/b0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->y1(Lr6/e;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lbx/v;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, v0, Lbx/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->p0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    instance-of v2, v1, Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    check-cast v1, Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lbx/w;

    .line 95
    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    iget-object v1, v1, Lbx/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 99
    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 0

    .line 1
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getPageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public abstract o0(Lcom/transsnet/downloader/adapter/k;)V
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    const/16 v5, 0x9

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v2, p0

    .line 25
    move v3, p1

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public q0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected final r0()Lcom/transsnet/downloader/adapter/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public t0(Landroid/view/LayoutInflater;)Lbx/v;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lbx/v;->c(Landroid/view/LayoutInflater;)Lbx/v;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method
