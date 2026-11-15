.class public abstract Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;
.super Landroidx/fragment/app/Fragment;
.source "source.java"

# interfaces
.implements Lls/d;
.implements Lyg/m;
.implements Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf4/a;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lls/d;",
        "Lyg/m;",
        "Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 o*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001HB\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ-\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0008J\u000f\u0010\u0019\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0008J\u000f\u0010\u001a\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0008J\u000f\u0010\u001b\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0008J\u000f\u0010\u001c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0008J\u001f\u0010!\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008#\u0010\u0008J\u000f\u0010$\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008$\u0010\u0008J\u000f\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008(\u0010\'J\u000f\u0010)\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008)\u0010\'J\u000f\u0010*\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008*\u0010\'J\u000f\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010/\u001a\u00020\u00122\u0008\u0008\u0002\u0010.\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00104\u001a\u000203H\u0016\u00a2\u0006\u0004\u00084\u00105J\u0011\u00106\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00086\u00102J\r\u00107\u001a\u00020\u000b\u00a2\u0006\u0004\u00087\u0010\u0008J\u0017\u00108\u001a\u00020\u000b2\u0008\u0008\u0002\u0010.\u001a\u00020%\u00a2\u0006\u0004\u00088\u00109J\r\u0010:\u001a\u00020\u000b\u00a2\u0006\u0004\u0008:\u0010\u0008J\u0017\u0010;\u001a\u00020\u000b2\u0008\u0008\u0002\u0010.\u001a\u00020%\u00a2\u0006\u0004\u0008;\u00109J\u000f\u0010<\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008<\u0010\u0008J\u000f\u0010=\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008=\u0010\u0008J\u000f\u0010>\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008>\u0010\u0008J\u0017\u0010?\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020+H&\u00a2\u0006\u0004\u0008A\u0010-J!\u0010B\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008B\u0010\u0017J\u000f\u0010B\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008B\u0010\u0008J\u000f\u0010C\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008C\u0010\u0008J\u000f\u0010D\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008D\u0010\u0008J\u000f\u0010E\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008E\u0010\u0008J\u000f\u0010F\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008F\u0010\u0008R$\u0010N\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR$\u0010U\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR$\u0010]\u001a\u0004\u0018\u00010V8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u0018\u0010`\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0018\u0010d\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u001d\u0010j\u001a\u0004\u0018\u00010e8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008f\u0010g\u001a\u0004\u0008h\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010m\u00a8\u0006p"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;",
        "Lf4/a;",
        "T",
        "Landroidx/fragment/app/Fragment;",
        "Lls/d;",
        "Lyg/m;",
        "Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "onPause",
        "logResume",
        "logPause",
        "onDestroy",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "onDisconnected",
        "receiveArguments",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "isMonitorNetworkState",
        "isShowPageStateLayoutTitle",
        "isRegisteDeviceKeyMonitor",
        "",
        "getEmptyDescText",
        "()Ljava/lang/String;",
        "isShowTitleLayout",
        "getEmptyView",
        "(Z)Landroid/view/View;",
        "getNoNetworkView",
        "()Landroid/view/View;",
        "",
        "getScreenType",
        "()I",
        "getLoadingView",
        "showContentView",
        "showEmptyView",
        "(Z)V",
        "showLoadingView",
        "showNoNetworkView",
        "onDestroyView",
        "onHomeClick",
        "onRecentClick",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lf4/a;",
        "getPageStateLayoutTitle",
        "initViewData",
        "initViewModel",
        "initListener",
        "loadDefaultData",
        "retryLoadData",
        "Landroid/widget/ProgressBar;",
        "a",
        "Landroid/widget/ProgressBar;",
        "getProgressBar",
        "()Landroid/widget/ProgressBar;",
        "setProgressBar",
        "(Landroid/widget/ProgressBar;)V",
        "progressBar",
        "b",
        "Lf4/a;",
        "getMViewBinding",
        "()Lf4/a;",
        "setMViewBinding",
        "(Lf4/a;)V",
        "mViewBinding",
        "Landroid/widget/FrameLayout;",
        "c",
        "Landroid/widget/FrameLayout;",
        "getFlStateView",
        "()Landroid/widget/FrameLayout;",
        "setFlStateView",
        "(Landroid/widget/FrameLayout;)V",
        "flStateView",
        "d",
        "Landroid/view/View;",
        "loadingView",
        "Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;",
        "e",
        "Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;",
        "deviceKeyMonitor",
        "Lqi/b;",
        "f",
        "Lkotlin/Lazy;",
        "getLogViewConfig",
        "()Lqi/b;",
        "logViewConfig",
        "Ljava/lang/Runnable;",
        "g",
        "Ljava/lang/Runnable;",
        "showNoNetworkViewRunnable",
        "h",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment$a;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lf4/a;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/view/View;

.field private e:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;

.field private final f:Lkotlin/Lazy;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->h:Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/shorttv_pugc/base/fragment/e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/base/fragment/e;-><init>(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->f:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/shorttv_pugc/base/fragment/f;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/base/fragment/f;-><init>(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->g:Ljava/lang/Runnable;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic V(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->Z(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lqi/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->b0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->a0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->e0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final Z(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lqi/b;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/base/widget/j;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final a0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->retryLoadData()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lqi/b;->f()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/transsion/shorttv_pugc/base/widget/j;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final b0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)Lqi/b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->newLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    and-int/2addr p2, p3

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move p1, p3

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->showEmptyView(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: showEmptyView"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic d0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    and-int/2addr p2, p3

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move p1, p3

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->showNoNetworkView(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: showNoNetworkView"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private static final e0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->d0(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getEmptyDescText()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getEmptyView(Z)Landroid/view/View;
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/shorttv_pugc/base/widget/StateView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v6, v0}, Lcom/transsion/shorttv_pugc/base/widget/StateView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getScreenType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getPageStateLayoutTitle()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getEmptyDescText()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v1, 0x2

    .line 28
    move-object v0, v6

    .line 29
    move v3, p1

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/base/widget/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v6
.end method

.method protected final getFlStateView()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->c:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqi/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getMViewBinding()Lf4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->b:Lf4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNoNetworkView()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->isShowPageStateLayoutTitle()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;-><init>(Landroid/content/Context;Z)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/transsion/shorttv_pugc/base/fragment/c;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/base/fragment/c;-><init>(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;->retry(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/transsion/shorttv_pugc/base/fragment/d;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/base/fragment/d;-><init>(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;->goToSetting(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lqi/b;->f()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/base/widget/j;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v0
.end method

.method public abstract getPageStateLayoutTitle()Ljava/lang/String;
.end method

.method public getScreenType()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public abstract getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
.end method

.method public abstract initListener()V
.end method

.method public abstract initViewData()V
.end method

.method public initViewData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract initViewModel()V
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isRegisteDeviceKeyMonitor()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public loadDefaultData()V
    .locals 0

    .line 1
    return-void
.end method

.method public logPause()V
    .locals 0

    .line 1
    invoke-static {p0}, Lls/d$a;->b(Lls/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public logResume()V
    .locals 0

    .line 1
    invoke-static {p0}, Lls/d$a;->c(Lls/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    invoke-static {p0}, Lls/d$a;->a(Lls/d;)Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onConnected()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment$onConnected$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment$onConnected$1;-><init>(Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LifecycleCoroutineScope;->b(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->receiveArguments()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->isMonitorNetworkState()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lyg/l;->l(Lyg/m;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->isRegisteDeviceKeyMonitor()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;

    .line 31
    .line 32
    invoke-direct {v0, p1, p0}, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;-><init>(Landroid/content/Context;Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor$b;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->e:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    sget p3, Lcom/transsion/shorttv/R$layout;->short_tv_fragment_default_base_layout:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->b:Lf4/a;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    sget p3, Lcom/transsion/shorttv/R$id;->flContent:I

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->b:Lf4/a;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Lf4/a;->getRoot()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v1, p1

    .line 45
    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz p2, :cond_2

    .line 49
    .line 50
    sget p3, Lcom/transsion/shorttv/R$id;->flStateView:I

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->isAudioShowNoNetworkLayout()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 67
    .line 68
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getNoNetworkView()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object p3, p1

    .line 86
    :cond_3
    :goto_1
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->c:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    sget p1, Lcom/transsion/shorttv/R$id;->progressBar:I

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/ProgressBar;

    .line 97
    .line 98
    :cond_4
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->a:Landroid/widget/ProgressBar;

    .line 99
    .line 100
    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->isMonitorNetworkState()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lyg/l;->m(Lyg/m;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->e:Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;->b()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->b:Lf4/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lf4/a;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->g:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->g:Ljava/lang/Runnable;

    .line 21
    .line 22
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public onHomeClick()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->logPause()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onRecentClick()V
    .locals 0

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->logResume()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->initViewData()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->initViewData(Landroid/view/View;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->initViewModel()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->initListener()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->loadDefaultData()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public receiveArguments()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract retryLoadData()V
.end method

.method public final showContentView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->c:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final showEmptyView(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->c:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final showLoadingView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->c:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getLoadingView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final showNoNetworkView(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->c:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;->getNoNetworkView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v2, v1, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {v2, p1, v4, v3, v4}, Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;->showTitle$default(Lcom/transsion/shorttv_pugc/base/widget/NoNetworkBigView;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method
