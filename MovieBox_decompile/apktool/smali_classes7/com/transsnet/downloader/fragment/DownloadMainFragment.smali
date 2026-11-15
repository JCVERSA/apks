.class public final Lcom/transsnet/downloader/fragment/DownloadMainFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/DownloadMainFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lbx/w;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 ;2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0004R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010*\u001a\u00020%8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008)\u0010\'R\u001b\u00100\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R.\u00106\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020% 3*\n\u0012\u0004\u0012\u00020%\u0018\u00010202018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109\u00a8\u0006<"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadMainFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lbx/w;",
        "<init>",
        "()V",
        "",
        "r0",
        "g0",
        "j0",
        "k0",
        "q0",
        "t0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "m0",
        "(Landroid/view/LayoutInflater;)Lbx/w;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "initData",
        "onResume",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "logResume",
        "logPause",
        "Landroidx/fragment/app/Fragment;",
        "a",
        "Landroidx/fragment/app/Fragment;",
        "contentFragment",
        "",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "c",
        "FRAGMENT_TAG",
        "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "d",
        "Lkotlin/Lazy;",
        "l0",
        "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "mLocalFileViewModel",
        "Landroidx/activity/result/b;",
        "",
        "kotlin.jvm.PlatformType",
        "e",
        "Landroidx/activity/result/b;",
        "requestMultiplePermission",
        "",
        "f",
        "J",
        "resumeTimeStamp",
        "g",
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
.field public static final g:Lcom/transsnet/downloader/fragment/DownloadMainFragment$a;


# instance fields
.field private a:Landroidx/fragment/app/Fragment;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlin/Lazy;

.field private final e:Landroidx/activity/result/b;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadMainFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadMainFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->g:Lcom/transsnet/downloader/fragment/DownloadMainFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DownloadMain"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "DownloadPanel"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-class v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadMainFragment$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadMainFragment$special$$inlined$activityViewModels$default$2;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->d:Lkotlin/Lazy;

    .line 33
    .line 34
    new-instance v0, Lf/h;

    .line 35
    .line 36
    invoke-direct {v0}, Lf/h;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/transsnet/downloader/fragment/f0;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/f0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "registerForActivityResult(...)"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->e:Landroidx/activity/result/b;

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic a0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->p0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->s0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->h0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->o0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Lij/n;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->n0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Lij/n;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->i0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/w;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lbx/w;->b()Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/transsnet/downloader/fragment/e0;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/e0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private static final h0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    .line 21
    .line 22
    sget-object v2, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/transsnet/downloader/fragment/j0;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lcom/transsnet/downloader/fragment/j0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, v2, v3}, Lcom/transsnet/downloader/util/d;->e(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private static final i0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->j0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final j0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lff/c;->a:Lff/c;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lff/c;->c(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->k0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    sget-object v0, Lcom/transsnet/downloader/util/j;->a:Lcom/transsnet/downloader/util/j;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/j;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->e:Landroidx/activity/result/b;

    .line 35
    .line 36
    sget-object v1, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/baselib/helper/e;->a()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method private final k0()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v2, "getOutsidePlayHistoricalList"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->l0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->k(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private final l0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->d:Lkotlin/Lazy;

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

.method private static final n0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Lij/n;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lij/n;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    if-nez p1, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lbx/w;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p1, Lbx/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lbx/w;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p1, Lbx/w;->h:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lbx/w;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iget-object p1, p1, Lbx/w;->g:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->q0()V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->r0()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lbx/w;

    .line 82
    .line 83
    if-eqz p0, :cond_7

    .line 84
    .line 85
    iget-object p0, p0, Lbx/w;->j:Lcom/transsion/baseui/widget/GradientTextView;

    .line 86
    .line 87
    if-eqz p0, :cond_7

    .line 88
    .line 89
    sget-object p1, Lij/o;->a:Lij/o;

    .line 90
    .line 91
    invoke-virtual {p1}, Lij/o;->i()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    const/16 v0, 0x8

    .line 99
    .line 100
    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0
.end method

.method private static final o0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "/download/transfer"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final p0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final q0()V
    .locals 1

    .line 1
    sget-object v0, Lij/o;->a:Lij/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/o;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lbx/w;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lbx/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->loadAd()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lbx/w;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, v0, Lbx/w;->h:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->loadAd()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lbx/w;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, v0, Lbx/w;->g:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsnet/downloader/lottery/LotteryTipView;->onFragmentResume()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method private final r0()V
    .locals 5

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lij/o;->a:Lij/o;

    .line 11
    .line 12
    invoke-virtual {v0}, Lij/o;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->a:Landroidx/fragment/app/Fragment;

    .line 25
    .line 26
    instance-of v2, v2, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    :cond_2
    if-nez v0, :cond_4

    .line 31
    .line 32
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->a:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    instance-of v2, v2, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    .line 35
    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    :cond_3
    return-void

    .line 39
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "getChildFragmentManager(...)"

    .line 44
    .line 45
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "beginTransaction()"

    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    const-string v4, "extra_page_index"

    .line 64
    .line 65
    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :cond_5
    if-eqz v0, :cond_6

    .line 70
    .line 71
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;-><init>()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_6
    sget-object v0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->t:Lcom/transsnet/downloader/fragment/FileManagerFragment$a;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$a;->a(I)Lcom/transsnet/downloader/fragment/FileManagerFragment;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_2
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->a:Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    sget v1, Lcom/transsnet/downloader/R$id;->fl_container:I

    .line 88
    .line 89
    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 90
    .line 91
    .line 92
    :cond_7
    invoke-virtual {v2}, Landroidx/fragment/app/w;->j()I

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private static final s0(Lcom/transsnet/downloader/fragment/DownloadMainFragment;Ljava/util/Map;)V
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
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->k0()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    sget-object p1, Lff/c;->a:Lff/c;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lff/c;->c(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private final t0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/w;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/w;->d:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadMainFragment$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment$b;-><init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/ad/view/ScrollDetectFrameLayout;->setOnScrollListener(Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lbx/w;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lbx/w;->h:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lbx/w;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, v1, Lbx/w;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->setViewGroup(Landroid/view/ViewGroup;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->m0(Landroid/view/LayoutInflater;)Lbx/w;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    new-instance v7, Lcom/transsnet/downloader/fragment/g0;

    .line 10
    .line 11
    invoke-direct {v7, p0}, Lcom/transsnet/downloader/fragment/g0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 15
    .line 16
    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object v1, p1

    .line 23
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 24
    .line 25
    const-class p1, Lij/n;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string p1, "getName(...)"

    .line 32
    .line 33
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 37
    .line 38
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v2, p0

    .line 48
    invoke-virtual/range {v1 .. v7}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lbx/w;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p1, Lbx/w;->j:Lcom/transsion/baseui/widget/GradientTextView;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object p2, Lij/o;->a:Lij/o;

    .line 19
    .line 20
    invoke-virtual {p2}, Lij/o;->i()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 p2, 0x8

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lbx/w;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p1, Lbx/w;->j:Lcom/transsion/baseui/widget/GradientTextView;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    new-instance p2, Lcom/transsnet/downloader/fragment/h0;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/transsnet/downloader/fragment/h0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    instance-of p1, p1, Lcom/transsnet/downloader/activity/DownloadPanelActivity;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lbx/w;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object p1, p1, Lbx/w;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Lcom/transsnet/downloader/fragment/i0;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/transsnet/downloader/fragment/i0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMainFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->t0()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public logPause()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logPause()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->f:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->f:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "Subscription fb log duration:"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    filled-new-array {v3}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v3, "Report"

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static/range {v2 .. v7}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 51
    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "Subscription"

    .line 61
    .line 62
    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public logResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->f:J

    .line 9
    .line 10
    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;)Lbx/w;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lbx/w;->c(Landroid/view/LayoutInflater;)Lbx/w;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/Fragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object v0, Lij/y;->a:Lij/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->r0()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->q0()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->q0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
