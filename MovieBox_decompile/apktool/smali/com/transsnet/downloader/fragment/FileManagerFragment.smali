.class public final Lcom/transsnet/downloader/fragment/FileManagerFragment;
.super Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;
.source "source.java"

# interfaces
.implements Lim/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/FileManagerFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment<",
        "Lbx/h0;",
        ">;",
        "Lim/f;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\n\u0018\u0000 h2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001iB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u0019\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008#\u0010!J\u0017\u0010%\u001a\u00020$2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010,\u001a\u00020\u00062\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008,\u0010-J!\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00080\u00101J!\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u00082\u00101J\u000f\u00103\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00083\u0010\u0005J\r\u00104\u001a\u00020\u0006\u00a2\u0006\u0004\u00084\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00085\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00087\u0010\u0005J\u0017\u0010:\u001a\u00020\u00062\u0006\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0005J\u000f\u0010>\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008>\u0010\u0005J\u000f\u0010?\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0005R\u0016\u0010B\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u001b\u0010H\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010E\u001a\u0004\u0008K\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010R\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010OR\u001b\u0010W\u001a\u00020S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010E\u001a\u0004\u0008U\u0010VR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR \u0010_\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020X0\\8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\"\u0010g\u001a\u00020`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010f\u00a8\u0006j"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/FileManagerFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;",
        "Lbx/h0;",
        "Lim/f;",
        "<init>",
        "()V",
        "",
        "initViewModel",
        "",
        "position",
        "count",
        "c1",
        "(II)V",
        "N0",
        "L0",
        "O0",
        "S0",
        "initAd",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "R0",
        "(Landroid/view/LayoutInflater;)Lbx/h0;",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "z0",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "Lnet/lucode/hackware/magicindicator/MagicIndicator;",
        "r0",
        "()Lnet/lucode/hackware/magicindicator/MagicIndicator;",
        "t0",
        "(I)V",
        "state",
        "s0",
        "Landroidx/fragment/app/Fragment;",
        "d0",
        "(I)Landroidx/fragment/app/Fragment;",
        "",
        "",
        "f0",
        "()Ljava/util/List;",
        "list",
        "u0",
        "(Ljava/util/List;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initData",
        "lazyLoadData",
        "b1",
        "onDestroy",
        "onStart",
        "onResume",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onPause",
        "logPause",
        "logResume",
        "onMemberStateChange",
        "k",
        "Z",
        "isFirstStart",
        "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;",
        "l",
        "Lkotlin/Lazy;",
        "Q0",
        "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;",
        "mTransferViewModel",
        "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "m",
        "P0",
        "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "mLocalFileViewModel",
        "n",
        "Landroidx/fragment/app/Fragment;",
        "topCardAdFragment",
        "o",
        "appDownloadAdFragment",
        "Lcom/transsnet/downloader/manager/g;",
        "p",
        "M0",
        "()Lcom/transsnet/downloader/manager/g;",
        "downloadManager",
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "q",
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "currentFragment",
        "",
        "r",
        "Ljava/util/Map;",
        "fragmentMap",
        "",
        "s",
        "J",
        "getResumeTimeStamp",
        "()J",
        "setResumeTimeStamp",
        "(J)V",
        "resumeTimeStamp",
        "t",
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
.field public static final t:Lcom/transsnet/downloader/fragment/FileManagerFragment$a;


# instance fields
.field private k:Z

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private n:Landroidx/fragment/app/Fragment;

.field private o:Landroidx/fragment/app/Fragment;

.field private final p:Lkotlin/Lazy;

.field private q:Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;

.field private final r:Ljava/util/Map;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/FileManagerFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->t:Lcom/transsnet/downloader/fragment/FileManagerFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->k:Z

    .line 6
    .line 7
    const-class v0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$2;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->l:Lkotlin/Lazy;

    .line 28
    .line 29
    const-class v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$3;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$4;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->m:Lkotlin/Lazy;

    .line 50
    .line 51
    new-instance v0, Lcom/transsnet/downloader/fragment/w5;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/w5;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->p:Lkotlin/Lazy;

    .line 61
    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    .line 68
    .line 69
    return-void
.end method

.method public static synthetic A0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->K0()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->U0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Y0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->a1(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lau/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->V0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lau/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Z0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->X0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->W0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->T0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->M0()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final K0()Lcom/transsnet/downloader/manager/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final L0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->H()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->i(Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final M0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->p:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->P()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final O0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->P0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

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

.method private final P0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->m:Lkotlin/Lazy;

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

.method private final Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final S0()V
    .locals 11

    .line 1
    new-instance v6, Lcom/transsnet/downloader/fragment/b6;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/b6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

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
    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

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
    new-instance v6, Lcom/transsnet/downloader/fragment/c6;

    .line 44
    .line 45
    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/c6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

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
    const-class v1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

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
    new-instance v6, Lcom/transsnet/downloader/fragment/d6;

    .line 76
    .line 77
    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/d6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 85
    .line 86
    const-class v1, Lau/e;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    move-object v1, p0

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private static final T0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 1

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
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->H()V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final U0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lbx/h0;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Lbx/h0;->d:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;->getAdd()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->N0()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final V0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lau/e;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const-string v1, "TransferFinishEvent\uff0c \u6709\u4f20\u8f93\u5b8c\u6210\uff0c\u5237\u65b0\u9875\u9762"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "Transfer_d"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lau/e;->a()Lcom/transsion/transfer/impl/entity/FileData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Lcom/transsnet/downloader/fragment/e6;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/e6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->r0(Lcom/transsion/transfer/impl/entity/FileData;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final W0(Lcom/transsnet/downloader/fragment/FileManagerFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

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
    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->i(Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->d0()Landroidx/lifecycle/b0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final X0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->c1(II)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final Y0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->c1(II)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final Z0(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x2

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->c1(II)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final a1(Lcom/transsnet/downloader/fragment/FileManagerFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 8

    .line 1
    check-cast p1, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lbx/h0;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lbx/h0;->d:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    const-string v2, "downloading have data, fragment is shown"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lbx/h0;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lbx/h0;->d:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v4, 0x4

    .line 69
    const/4 v5, 0x0

    .line 70
    const-string v2, "downloading have data, show fragment"

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    move-object v0, p1

    .line 74
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v6, "DownloadingListFragment"

    .line 82
    .line 83
    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;-><init>()V

    .line 92
    .line 93
    .line 94
    :cond_3
    move-object v7, v0

    .line 95
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v4, 0x4

    .line 106
    const/4 v5, 0x0

    .line 107
    const-string v2, "downloading have data, isAdded, show"

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    move-object v0, p1

    .line 111
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0, v7}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/w;->l()V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const/4 v4, 0x4

    .line 135
    const/4 v5, 0x0

    .line 136
    const-string v2, "downloading have data, add"

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    move-object v0, p1

    .line 140
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    sget p1, Lcom/transsnet/downloader/R$id;->flDownloadingContainer:I

    .line 152
    .line 153
    invoke-virtual {p0, p1, v7, v6}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/w;->l()V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    :goto_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const/4 v4, 0x4

    .line 168
    const/4 v5, 0x0

    .line 169
    const-string v2, "downloading null- hide fragment"

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    invoke-static/range {v0 .. v5}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lbx/h0;

    .line 180
    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    iget-object p0, p0, Lbx/h0;->d:Landroid/widget/FrameLayout;

    .line 184
    .line 185
    if-eqz p0, :cond_6

    .line 186
    .line 187
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    return-object p0
.end method

.method private final c1(II)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->getTAG()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "updateTabTitle - position:"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ",count:"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->i0()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lt p1, v0, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->i0()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-lez p2, :cond_1

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, " "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const-string v1, ""

    .line 78
    .line 79
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->g0()Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v2, 0x0

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->getPagerTitleView(I)Lxy/d;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move-object v1, v2

    .line 107
    :goto_1
    instance-of v3, v1, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    .line 108
    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    move-object v2, v1

    .line 112
    check-cast v2, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    .line 113
    .line 114
    :cond_3
    if-eqz v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {v2, v0, p2, p1}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;->setTitle(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    :cond_4
    return-void
.end method

.method private final initAd()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TopCardAdFragment"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    :cond_0
    iget-object v4, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    const-string v0, "getChildFragmentManager(...)"

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    sget-object v1, Lij/m;->a:Lij/m;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget v3, Lcom/transsnet/downloader/R$id;->flTopCardAd:I

    .line 38
    .line 39
    const/16 v7, 0x18

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v1 .. v8}, Lij/m;->b(Lij/m;Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "AppDownloadAdFragment"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    new-instance v1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 62
    .line 63
    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    .line 67
    .line 68
    :cond_2
    iget-object v5, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    .line 69
    .line 70
    if-eqz v5, :cond_3

    .line 71
    .line 72
    sget-object v2, Lij/m;->a:Lij/m;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget v4, Lcom/transsnet/downloader/R$id;->flAppDownloadAd:I

    .line 82
    .line 83
    const/16 v8, 0x18

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    invoke-static/range {v2 .. v9}, Lij/m;->b(Lij/m;Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method private final initViewModel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->O()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsnet/downloader/fragment/x5;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/x5;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->P0()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->i()Landroidx/lifecycle/b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/transsnet/downloader/fragment/y5;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/y5;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->Q0()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->j()Landroidx/lifecycle/b0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/transsnet/downloader/fragment/z5;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/z5;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->Q()Landroidx/lifecycle/b0;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lcom/transsnet/downloader/fragment/a6;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/a6;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->L0()V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->O0()V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public R0(Landroid/view/LayoutInflater;)Lbx/h0;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lbx/h0;->c(Landroid/view/LayoutInflater;)Lbx/h0;

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

.method public final b1()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, v2}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lbx/h0;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, v1, Lbx/h0;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public d0(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/transsnet/downloader/fragment/DownloadedListFragment;->k:Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;->a()Lcom/transsnet/downloader/fragment/DownloadedListFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->l:Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;->a()Lcom/transsnet/downloader/fragment/TransferReceivedFragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :goto_0
    move-object p1, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget-object v0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->o:Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;->a()Lcom/transsnet/downloader/fragment/LocalFileListFragment;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v0, Lcom/transsnet/downloader/fragment/DownloadedListFragment;->k:Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadedListFragment$a;->a()Lcom/transsnet/downloader/fragment/DownloadedListFragment;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_1
    return-object p1
.end method

.method public f0()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->K()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->R0(Landroid/view/LayoutInflater;)Lbx/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->b1()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/transsnet/downloader/fragment/FileManagerFragment$initData$1;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-direct {v4, p0, p1}, Lcom/transsnet/downloader/fragment/FileManagerFragment$initData$1;-><init>(Lcom/transsnet/downloader/fragment/FileManagerFragment;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->initViewModel()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->S0()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->initAd()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public logPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logPause()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->s:J

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
    iget-wide v2, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->s:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "downloadpage"

    .line 30
    .line 31
    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
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
    iput-wide v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->s:J

    .line 9
    .line 10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "extra_page_index"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v0

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->y0(I)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 23
    .line 24
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/transsnet/downloader/manager/g;->i()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->y0(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const-class p1, Lim/b;

    .line 42
    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lim/b;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, p0}, Lim/b;->D(Lim/f;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-class v1, Lim/b;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lim/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lim/b;->v(Lim/f;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_4

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->n:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    instance-of v0, p1, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v1

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/ad/TopCardAdFragment;->k0()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->o:Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    instance-of v0, p1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;

    .line 30
    .line 31
    :cond_2
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/transsnet/downloader/fragment/ad/AppDownloadAdFragment;->o0()V

    .line 34
    .line 35
    .line 36
    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->L0()V

    .line 37
    .line 38
    .line 39
    :cond_4
    return-void
.end method

.method public onMemberStateChange()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v2, Lim/b;

    .line 5
    .line 6
    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lim/b;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lim/b;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v0

    .line 20
    :goto_0
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v5, "\u4e0b\u8f7d\u7ba1\u7406\u9875\u9762\u6536\u5230\u56de\u8c03 --> skipShowAd = "

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v4, "co_mem"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lax/b;

    .line 48
    .line 49
    invoke-direct {v1}, Lax/b;-><init>()V

    .line 50
    .line 51
    .line 52
    const-class v3, Lqx/a;

    .line 53
    .line 54
    new-array v4, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v3, v4}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lqx/a;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    invoke-interface {v3}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v3, v4

    .line 71
    :goto_1
    const/4 v5, 0x1

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Lax/b;->i(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v2, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lim/b;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-interface {v0}, Lim/b;->B()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v0, v5

    .line 100
    :goto_2
    invoke-virtual {v1, v0}, Lax/b;->i(I)V

    .line 101
    .line 102
    .line 103
    :goto_3
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 104
    .line 105
    invoke-static {v0, v4, v5, v4}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v2, v1}, Lcom/transsnet/downloader/manager/g;->G(Lax/b;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v4, v5, v4}, Lcom/transsnet/downloader/manager/p$a;->b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/transsnet/downloader/manager/g;->v()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-static {v0, p0, v0, v1, v0}, Lcom/transsion/baseui/activity/k;->l(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "visible="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v2, p0, v0, v1, v2}, Lcom/transsion/baseui/activity/k;->p(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->k:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/FileManagerFragment;->L0()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public r0()Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/h0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/h0;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public s0(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public t0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->r:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/FileManagerFragment;->q:Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;

    .line 14
    .line 15
    return-void
.end method

.method public u0(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->j0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->K()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public z0()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/h0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/h0;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method
