.class public Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;
.super Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment<",
        "Lbx/z;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000 \u009a\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u009b\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00082\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\'\u0010\u001b\u001a\u00020\u00082\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00052\u0006\u0010\u001a\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008 \u0010\u0004J\u0017\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0004J\u000f\u0010\'\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u000f\u0010(\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0004J\u000f\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008.\u0010-J\u000f\u0010/\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0004J\u0019\u00102\u001a\u00020\u00082\u0008\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00082\u00103J\u0017\u00106\u001a\u00020\u00022\u0006\u00105\u001a\u000204H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008;\u0010)J\u000f\u0010<\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008<\u0010)J\u000f\u0010=\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008>\u0010\u0004J\u000f\u0010?\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0004J\u0017\u0010A\u001a\u00020\u00082\u0006\u0010@\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008A\u0010\u0014J\u000f\u0010B\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0004J\u0015\u0010E\u001a\u00020\u00082\u0006\u0010D\u001a\u00020C\u00a2\u0006\u0004\u0008E\u0010FJ\r\u0010G\u001a\u00020\r\u00a2\u0006\u0004\u0008G\u0010)J\u0015\u0010I\u001a\u00020\u00082\u0006\u0010H\u001a\u00020\r\u00a2\u0006\u0004\u0008I\u0010\u0014J\r\u0010J\u001a\u00020\r\u00a2\u0006\u0004\u0008J\u0010)R\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010Q\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010S\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010PR\u0016\u0010V\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010Y\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0016\u0010[\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010XR\u0016\u0010]\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010UR\u0016\u0010_\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010PR\u0016\u0010a\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010PR\u0016\u0010c\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010PR\"\u0010g\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010U\u001a\u0004\u0008e\u0010)\"\u0004\u0008f\u0010\u0014R\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010q\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010XR\u0018\u0010s\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010XR\u0018\u0010u\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010XR\u0016\u0010w\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010PR\u0016\u0010y\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010PR\u0016\u0010{\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010PR\u0016\u0010}\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010PR\u0016\u0010\u007f\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010PR\u0018\u0010\u0081\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010PR&\u0010\u0085\u0001\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0082\u0001\u0010U\u001a\u0005\u0008\u0083\u0001\u0010)\"\u0005\u0008\u0084\u0001\u0010\u0014R\u0019\u0010\u0088\u0001\u001a\u00030\u0086\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008P\u0010\u0087\u0001R\u0018\u0010\u0089\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010PR\u0018\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R0\u0010\u0096\u0001\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0005\u0008\u0095\u0001\u0010\nR\u0016\u0010\u0099\u0001\u001a\u0004\u0018\u00010+8F\u00a2\u0006\u0008\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001\u00a8\u0006\u009c\u0001"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;",
        "Lbx/z;",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
        "seasons",
        "",
        "U0",
        "(Ljava/util/List;)V",
        "Lcom/transsnet/downloader/bean/DownloadListBean;",
        "bean",
        "",
        "a1",
        "(Lcom/transsnet/downloader/bean/DownloadListBean;)Z",
        "initView",
        "k1",
        "isSelected",
        "m1",
        "(Z)V",
        "n1",
        "loadData",
        "showNotNetError",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "list",
        "hasMore",
        "t1",
        "(Ljava/util/List;Z)V",
        "targetItem",
        "s1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "showEmpty",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "getEmptyView",
        "(Landroid/content/Context;)Landroid/view/View;",
        "startLoading",
        "hideLoading",
        "h1",
        "()Z",
        "o1",
        "",
        "X0",
        "()I",
        "W0",
        "initViewData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Z0",
        "(Landroid/view/LayoutInflater;)Lbx/z;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "isAudioShowNoNetworkLayout",
        "isMonitorNetworkState",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "hidden",
        "onHiddenChanged",
        "onDestroy",
        "Lzw/c;",
        "control",
        "q1",
        "(Lzw/c;)V",
        "b1",
        "selectAll",
        "l1",
        "j1",
        "Lcom/transsnet/downloader/adapter/g;",
        "l",
        "Lcom/transsnet/downloader/adapter/g;",
        "mAdapter",
        "m",
        "I",
        "resolution",
        "n",
        "resolutionTabPosition",
        "o",
        "Z",
        "isShowLoading",
        "p",
        "Ljava/lang/String;",
        "pageFrom",
        "q",
        "lastPageFrom",
        "r",
        "showPremiumIfNeed",
        "s",
        "curSeason",
        "t",
        "targetSeason",
        "u",
        "epIndex",
        "v",
        "getHasMoreSeasons",
        "setHasMoreSeasons",
        "hasMoreSeasons",
        "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;",
        "w",
        "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;",
        "currentViewModel",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "x",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "y",
        "groupId",
        "z",
        "ops",
        "A",
        "targetResourceId",
        "B",
        "startPosition",
        "C",
        "endPosition",
        "D",
        "totalPosition",
        "E",
        "curTotalPosition",
        "F",
        "startEpisode",
        "G",
        "endEpisode",
        "H",
        "i1",
        "setSelectAll",
        "isSelectAll",
        "",
        "J",
        "localTotalSize",
        "unableSize",
        "Lkotlinx/coroutines/n0;",
        "K",
        "Lkotlinx/coroutines/n0;",
        "downloadCoroutineScope",
        "L",
        "Lzw/c;",
        "tabControl",
        "M",
        "Ljava/util/List;",
        "getSeasonsList",
        "()Ljava/util/List;",
        "p1",
        "seasonsList",
        "Y0",
        "()Ljava/lang/Integer;",
        "maxResolution",
        "N",
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
.field public static final N:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:J

.field private J:I

.field private final K:Lkotlinx/coroutines/n0;

.field private L:Lzw/c;

.field private M:Ljava/util/List;

.field private l:Lcom/transsnet/downloader/adapter/g;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

.field private x:Lcom/transsion/moviedetailapi/bean/Subject;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->N:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->o:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->p:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->q:Ljava/lang/String;

    .line 12
    .line 13
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 14
    .line 15
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 16
    .line 17
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->D:I

    .line 18
    .line 19
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->E:I

    .line 20
    .line 21
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->F:I

    .line 22
    .line 23
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->G:I

    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->K:Lkotlinx/coroutines/n0;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic H0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->V0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/transsnet/downloader/adapter/g;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->e1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/transsnet/downloader/adapter/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->g1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;JZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->c1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;JZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L0(Lcom/transsnet/downloader/adapter/g;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->f1(Lcom/transsnet/downloader/adapter/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->r1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic O0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lcom/transsnet/downloader/adapter/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Q0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lzw/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic R0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic S0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->o1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic T0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->I:J

    .line 2
    .line 3
    return-void
.end method

.method private final U0(Ljava/util/List;)V
    .locals 11

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
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x1

    .line 11
    if-le v1, v2, :cond_1

    .line 12
    .line 13
    move v0, v2

    .line 14
    :cond_1
    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->v:Z

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 19
    .line 20
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->s:I

    .line 21
    .line 22
    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->m:I

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsnet/downloader/util/DownloadUtil;->A(Ljava/util/List;II)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->D:I

    .line 39
    .line 40
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->X0()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 57
    .line 58
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->F:I

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->W0()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->G:I

    .line 75
    .line 76
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string p1, "<get-TAG>(...)"

    .line 83
    .line 84
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->s:I

    .line 88
    .line 89
    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->u:I

    .line 90
    .line 91
    iget v3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->m:I

    .line 92
    .line 93
    iget v4, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 94
    .line 95
    iget v5, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 96
    .line 97
    iget v6, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->D:I

    .line 98
    .line 99
    iget v7, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->F:I

    .line 100
    .line 101
    iget v8, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->G:I

    .line 102
    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v10, "initViewModel,season:"

    .line 109
    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, ", epIndex:"

    .line 117
    .line 118
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ", resolution:"

    .line 125
    .line 126
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, " start:"

    .line 133
    .line 134
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p1, ", end:"

    .line 141
    .line 142
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, ", total:"

    .line 149
    .line 150
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, ", startEp:"

    .line 157
    .line 158
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, ", endEp:"

    .line 165
    .line 166
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    filled-new-array {p1}, [Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const/4 v4, 0x4

    .line 181
    const/4 v5, 0x0

    .line 182
    const/4 v3, 0x0

    .line 183
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_2
    return-void
.end method

.method private static final V0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/tn/lib/view/DefaultView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->startLoading()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->loadData()V

    .line 5
    .line 6
    .line 7
    const/16 p0, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final W0()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->E:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->D:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->F:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x13

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private final X0()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x13

    .line 4
    .line 5
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->D:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private final a1(Lcom/transsnet/downloader/bean/DownloadListBean;)Z
    .locals 2

    .line 1
    iget p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    add-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->X0()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 12
    .line 13
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 14
    .line 15
    if-ge v1, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method private static final c1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;JZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->o1()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->k1()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final d1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method private static final e1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/transsnet/downloader/adapter/g;)V
    .locals 3

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->loadData()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 14
    .line 15
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lfh/b$a;->d(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lcom/transsnet/downloader/fragment/p0;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lcom/transsnet/downloader/fragment/p0;-><init>(Lcom/transsnet/downloader/adapter/g;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v1, 0x1f4

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private static final f1(Lcom/transsnet/downloader/adapter/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final g1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->hideLoading()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_3

    .line 8
    .line 9
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 26
    .line 27
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->showEmpty()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lt6/f;->r()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne v2, v3, :cond_1

    .line 53
    .line 54
    iget-object v2, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Lt6/f;->v()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-static {v0, v2, v3, v1}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->a1(Lcom/transsnet/downloader/bean/DownloadListBean;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "<get-TAG>(...)"

    .line 95
    .line 96
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :cond_4
    iget v5, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 114
    .line 115
    iget v6, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 116
    .line 117
    iget v7, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->F:I

    .line 118
    .line 119
    iget v8, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->G:I

    .line 120
    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v10, "get data from  net, size: "

    .line 127
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ",hasMore:"

    .line 135
    .line 136
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ",start:"

    .line 143
    .line 144
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ",end:"

    .line 151
    .line 152
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", startEp:"

    .line 159
    .line 160
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ",endEp:"

    .line 167
    .line 168
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    filled-new-array {v1}, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    const/4 v7, 0x4

    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v6, 0x0

    .line 185
    invoke-static/range {v3 .. v8}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    sget-object v9, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 189
    .line 190
    iget-object v11, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 191
    .line 192
    iget-object v12, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->y:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v13, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->p:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v14, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->q:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v15, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->z:Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v11, :cond_6

    .line 201
    .line 202
    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-nez v1, :cond_5

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_5
    :goto_1
    move-object/from16 v16, v1

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_6
    :goto_2
    const-string v1, ""

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :goto_3
    const/16 v18, 0x80

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    move-object/from16 v10, p1

    .line 222
    .line 223
    invoke-static/range {v9 .. v19}, Lcom/transsnet/downloader/util/DownloadUtil;->y(Lcom/transsnet/downloader/util/DownloadUtil;Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-direct {v0, v1, v2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->t1(Ljava/util/List;Z)V

    .line 228
    .line 229
    .line 230
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 231
    .line 232
    return-object v0
.end method

.method private final getEmptyView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Lcom/tn/lib/view/DefaultView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setDefaultImageViewVisibility(I)V

    .line 22
    .line 23
    .line 24
    sget v2, Lcom/tn/lib/widget/R$mipmap;->ic_no_content:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/DefaultView;->setDefaultImage(I)V

    .line 27
    .line 28
    .line 29
    sget v2, Lcom/tn/lib/widget/R$string;->no_content:I

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "getString(...)"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/DefaultView;->setDescText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/tn/lib/view/DefaultView$DefaultViewStyle;->STYLE_IMAGE_DESC_BTN:Lcom/tn/lib/view/DefaultView$DefaultViewStyle;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/DefaultView;->setStyle(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setBtnVisibility(I)V

    .line 49
    .line 50
    .line 51
    sget v2, Lcom/transsion/baseui/R$string;->retry_text:I

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/tn/lib/view/DefaultView;->setBtnText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/transsnet/downloader/fragment/q0;

    .line 64
    .line 65
    invoke-direct {p1, p0, v0}, Lcom/transsnet/downloader/fragment/q0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/tn/lib/view/DefaultView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/tn/lib/view/DefaultView;->setBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method private final h1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    return v1
.end method

.method private final hideLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/z;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/z;->b:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1}, Lzw/c;->x(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private final initView()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/z;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/z;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/adapter/g;

    .line 26
    .line 27
    iget v4, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->s:I

    .line 28
    .line 29
    new-instance v5, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v6, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->p:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v7, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v7, v2

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v8, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v8, v2

    .line 59
    :goto_1
    iget-boolean v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->r:Z

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    new-instance v10, Lcom/transsnet/downloader/fragment/l0;

    .line 66
    .line 67
    invoke-direct {v10, p0}, Lcom/transsnet/downloader/fragment/l0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)V

    .line 68
    .line 69
    .line 70
    move-object v3, v0

    .line 71
    invoke-direct/range {v3 .. v10}, Lcom/transsnet/downloader/adapter/g;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Lcom/transsnet/downloader/widget/DownloadResLoadMoreView;

    .line 99
    .line 100
    invoke-direct {v2}, Lcom/transsnet/downloader/widget/DownloadResLoadMoreView;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lt6/f;->C(Ls6/a;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v2, 0x2

    .line 126
    invoke-virtual {v1, v2}, Lt6/f;->E(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lcom/transsnet/downloader/fragment/m0;

    .line 134
    .line 135
    invoke-direct {v2, p0, v0}, Lcom/transsnet/downloader/fragment/m0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lcom/transsnet/downloader/adapter/g;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$b;

    .line 142
    .line 143
    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$b;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 147
    .line 148
    .line 149
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lbx/z;

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    iget-object v0, v0, Lbx/z;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 160
    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 169
    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    new-instance v1, Lcom/transsnet/downloader/fragment/n0;

    .line 173
    .line 174
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/n0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/adapter/g;->O1(Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lbx/z;

    .line 185
    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    iget-object v0, v0, Lbx/z;->b:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    if-eqz v0, :cond_6

    .line 191
    .line 192
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    :cond_6
    return-void
.end method

.method private final k1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget v4, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 22
    .line 23
    add-int/2addr v3, v4

    .line 24
    iget-object v4, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 25
    .line 26
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_0
    invoke-interface {v1, v2, v0, v3}, Lzw/c;->m(ILjava/util/List;Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private final loadData()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 4
    .line 5
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lbx/z;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lbx/z;->c:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 29
    .line 30
    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 31
    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    iput v2, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 37
    .line 38
    :cond_1
    iget-object v3, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->w:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v4, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v4, v2

    .line 54
    :goto_0
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v5, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object v5, v2

    .line 65
    :goto_1
    iget v9, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->B:I

    .line 66
    .line 67
    iget v10, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->C:I

    .line 68
    .line 69
    iget v14, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->m:I

    .line 70
    .line 71
    const/16 v15, 0x398

    .line 72
    .line 73
    const/16 v16, 0x0

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v13, 0x0

    .line 81
    invoke-static/range {v3 .. v16}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->k(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIIILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->showNotNetError()V

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_2
    return-void
.end method

.method private final m1(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lzw/c;->U(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast v0, Ljava/util/Collection;

    .line 25
    .line 26
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->K:Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    new-instance v10, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    move-object v2, v10

    .line 52
    move-object v4, p0

    .line 53
    move v5, p1

    .line 54
    invoke-direct/range {v2 .. v7}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;ZILkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    const/4 v11, 0x3

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    move-object v7, v0

    .line 62
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final n1(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-wide v3, v1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 44
    .line 45
    invoke-virtual {v5, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 46
    .line 47
    .line 48
    iget-boolean v6, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->H:Z

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isUnable()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_1

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-wide v6, v1

    .line 70
    :goto_1
    add-long/2addr v3, v6

    .line 71
    iget-object v6, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 72
    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    move-wide v1, v3

    .line 86
    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 91
    .line 92
    .line 93
    :cond_5
    iput-wide v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->I:J

    .line 94
    .line 95
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 100
    .line 101
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {p1, v0, v1}, Lzw/c;->y(ILjava/lang/Long;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 109
    .line 110
    if-eqz p1, :cond_a

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_a

    .line 117
    .line 118
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "<get-TAG>(...)"

    .line 125
    .line 126
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_7

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    goto :goto_2

    .line 149
    :cond_7
    move-object v2, v3

    .line 150
    :goto_2
    iget v4, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 151
    .line 152
    iget-object v5, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 153
    .line 154
    if-eqz v5, :cond_8

    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    if-eqz v5, :cond_8

    .line 161
    .line 162
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v6, "selectAllWithSizeLessThan30,checkedSize = "

    .line 176
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v2, ",unableSize = "

    .line 184
    .line 185
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v2, ", dataSize = "

    .line 192
    .line 193
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const/4 v4, 0x4

    .line 204
    const/4 v5, 0x0

    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->o1()V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 213
    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iget v3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 223
    .line 224
    add-int/2addr v2, v3

    .line 225
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 226
    .line 227
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-ne v2, v3, :cond_9

    .line 239
    .line 240
    const/4 v2, 0x1

    .line 241
    goto :goto_3

    .line 242
    :cond_9
    const/4 v2, 0x0

    .line 243
    :goto_3
    invoke-interface {v0, v1, p1, v2}, Lzw/c;->m(ILjava/util/List;Z)V

    .line 244
    .line 245
    .line 246
    :cond_a
    return-void
.end method

.method private final o1()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isUnable()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v1, "<get-TAG>(...)"

    .line 53
    .line 54
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v5, "setCheckItem, size:"

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const/4 v7, 0x4

    .line 79
    const/4 v8, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->A()Landroidx/lifecycle/b0;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method private static final r1(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->startLoading()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->loadData()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final s1(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->o1()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 28
    .line 29
    add-int/2addr v2, v3

    .line 30
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 31
    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v2, v3, :cond_0

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v2, 0x0

    .line 48
    :goto_0
    invoke-interface {p1, v1, v0, v2}, Lzw/c;->m(ILjava/util/List;Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method private final showEmpty()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->getEmptyView(Landroid/content/Context;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final showNotNetError()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lbx/z;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lbx/z;->c:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lbx/z;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lbx/z;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v1, Lcom/transsnet/downloader/fragment/o0;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/o0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private final startLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lzw/c;->x(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private final t1(Ljava/util/List;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v8, "<get-TAG>(...)"

    .line 12
    .line 13
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v4, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v5, v9

    .line 31
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v7, "updateList , TabPosition:"

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, ", size:"

    .line 45
    .line 46
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v4, ", hasMore:"

    .line 53
    .line 54
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/4 v6, 0x4

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object/from16 v2, p1

    .line 71
    .line 72
    check-cast v2, Ljava/util/Collection;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x1

    .line 76
    if-eqz v2, :cond_22

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    goto/16 :goto_c

    .line 85
    .line 86
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    move v6, v3

    .line 96
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_e

    .line 101
    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 107
    .line 108
    sget-object v10, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 109
    .line 110
    invoke-virtual {v10}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    if-nez v11, :cond_3

    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    :cond_3
    invoke-virtual {v10, v11}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    iget-boolean v11, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->H:Z

    .line 129
    .line 130
    if-eqz v11, :cond_6

    .line 131
    .line 132
    if-eqz v10, :cond_4

    .line 133
    .line 134
    invoke-virtual {v10, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {v7, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 138
    .line 139
    .line 140
    iget-wide v11, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->I:J

    .line 141
    .line 142
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    if-eqz v13, :cond_5

    .line 147
    .line 148
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v13

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    const-wide/16 v13, 0x0

    .line 154
    .line 155
    :goto_2
    add-long/2addr v11, v13

    .line 156
    iput-wide v11, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->I:J

    .line 157
    .line 158
    :cond_6
    iget-object v11, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->A:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v11, :cond_7

    .line 161
    .line 162
    invoke-static {v11}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    if-eqz v11, :cond_7

    .line 167
    .line 168
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    goto :goto_3

    .line 173
    :cond_7
    const/4 v11, -0x2

    .line 174
    :goto_3
    if-nez v10, :cond_8

    .line 175
    .line 176
    move-object v12, v7

    .line 177
    goto :goto_4

    .line 178
    :cond_8
    move-object v12, v10

    .line 179
    :goto_4
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    if-nez v13, :cond_a

    .line 184
    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_9
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    sget-object v13, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 193
    .line 194
    invoke-virtual {v13}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 195
    .line 196
    .line 197
    move-result-object v13

    .line 198
    const-string v14, "download_last_resolution"

    .line 199
    .line 200
    const/16 v15, 0x168

    .line 201
    .line 202
    invoke-virtual {v13, v14, v15}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    if-ne v11, v13, :cond_c

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_a
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    iget-object v14, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->A:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    if-nez v13, :cond_b

    .line 220
    .line 221
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-ne v13, v11, :cond_c

    .line 226
    .line 227
    if-lez v11, :cond_c

    .line 228
    .line 229
    invoke-virtual {v12}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    iget v13, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->t:I

    .line 234
    .line 235
    if-ne v11, v13, :cond_c

    .line 236
    .line 237
    :cond_b
    :goto_5
    invoke-direct {v0, v7}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->s1(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v12, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 241
    .line 242
    .line 243
    move v6, v4

    .line 244
    :cond_c
    :goto_6
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getUploadBy()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v12, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v7, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->m:I

    .line 252
    .line 253
    if-lez v7, :cond_d

    .line 254
    .line 255
    invoke-virtual {v12, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    .line 256
    .line 257
    .line 258
    :cond_d
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    if-eqz v10, :cond_2

    .line 262
    .line 263
    invoke-virtual {v10}, Lcom/transsion/baselib/db/download/DownloadBean;->isUnable()Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-ne v7, v4, :cond_2

    .line 268
    .line 269
    iget v7, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 270
    .line 271
    add-int/2addr v7, v4

    .line 272
    iput v7, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 273
    .line 274
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget v7, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 284
    .line 285
    iget v12, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 286
    .line 287
    new-instance v13, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v14, "tabPosition = "

    .line 293
    .line 294
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v7, ", unableSize plus = "

    .line 301
    .line 302
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v12

    .line 312
    const/4 v14, 0x4

    .line 313
    const/4 v15, 0x0

    .line 314
    const/4 v13, 0x0

    .line 315
    invoke-static/range {v10 .. v15}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :cond_e
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 325
    .line 326
    if-eqz v5, :cond_f

    .line 327
    .line 328
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-nez v7, :cond_f

    .line 333
    .line 334
    if-nez v6, :cond_f

    .line 335
    .line 336
    invoke-direct {v0, v5}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->s1(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 340
    .line 341
    .line 342
    :cond_f
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 343
    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    if-eqz v5, :cond_10

    .line 356
    .line 357
    invoke-virtual {v5}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->A()Landroidx/lifecycle/b0;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    if-eqz v5, :cond_10

    .line 362
    .line 363
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    check-cast v5, Ljava/util/List;

    .line 368
    .line 369
    if-eqz v5, :cond_10

    .line 370
    .line 371
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    goto :goto_7

    .line 380
    :cond_10
    move-object v5, v9

    .line 381
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string v8, "--updateList, size:"

    .line 391
    .line 392
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v5, "\uff0c newList size:"

    .line 399
    .line 400
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    const/4 v14, 0x4

    .line 411
    const/4 v15, 0x0

    .line 412
    const/4 v13, 0x0

    .line 413
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    if-eqz v5, :cond_11

    .line 421
    .line 422
    invoke-virtual {v5}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->A()Landroidx/lifecycle/b0;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    if-eqz v5, :cond_11

    .line 427
    .line 428
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    check-cast v5, Ljava/util/List;

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_11
    move-object v5, v9

    .line 436
    :goto_8
    check-cast v5, Ljava/util/Collection;

    .line 437
    .line 438
    if-eqz v5, :cond_16

    .line 439
    .line 440
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    if-eqz v5, :cond_12

    .line 445
    .line 446
    goto :goto_a

    .line 447
    :cond_12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    move v6, v3

    .line 452
    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    if-eqz v7, :cond_17

    .line 457
    .line 458
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 463
    .line 464
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    if-eqz v8, :cond_13

    .line 469
    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    if-eqz v8, :cond_13

    .line 475
    .line 476
    invoke-virtual {v8}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->A()Landroidx/lifecycle/b0;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    if-eqz v8, :cond_13

    .line 481
    .line 482
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    check-cast v8, Ljava/util/List;

    .line 487
    .line 488
    if-eqz v8, :cond_13

    .line 489
    .line 490
    check-cast v8, Ljava/lang/Iterable;

    .line 491
    .line 492
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    :cond_14
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v10

    .line 500
    if-eqz v10, :cond_13

    .line 501
    .line 502
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    check-cast v10, Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v10

    .line 516
    if-eqz v10, :cond_14

    .line 517
    .line 518
    invoke-virtual {v7, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 519
    .line 520
    .line 521
    iget-object v6, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 522
    .line 523
    if-eqz v6, :cond_15

    .line 524
    .line 525
    invoke-virtual {v6, v7, v4}, Lcom/transsnet/downloader/adapter/g;->D1(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 526
    .line 527
    .line 528
    :cond_15
    move v6, v4

    .line 529
    goto :goto_9

    .line 530
    :cond_16
    :goto_a
    move v6, v3

    .line 531
    :cond_17
    iget-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 532
    .line 533
    if-eqz v5, :cond_18

    .line 534
    .line 535
    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 536
    .line 537
    .line 538
    :cond_18
    iget-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 539
    .line 540
    if-eqz v5, :cond_1a

    .line 541
    .line 542
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    if-eqz v5, :cond_1a

    .line 547
    .line 548
    check-cast v5, Ljava/lang/Iterable;

    .line 549
    .line 550
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    move v7, v3

    .line 555
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v8

    .line 559
    if-eqz v8, :cond_1a

    .line 560
    .line 561
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v8

    .line 565
    add-int/lit8 v10, v7, 0x1

    .line 566
    .line 567
    if-gez v7, :cond_19

    .line 568
    .line 569
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 570
    .line 571
    .line 572
    :cond_19
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 573
    .line 574
    invoke-virtual {v8, v7}, Lcom/transsion/baselib/db/download/DownloadBean;->setIndex(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v8, v10}, Lcom/transsion/baselib/db/download/DownloadBean;->setResourcePosition(I)V

    .line 578
    .line 579
    .line 580
    move v7, v10

    .line 581
    goto :goto_b

    .line 582
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    if-eqz v5, :cond_1b

    .line 587
    .line 588
    invoke-virtual {v5, v4}, Lqi/b;->k(Z)V

    .line 589
    .line 590
    .line 591
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    if-eqz v5, :cond_1c

    .line 596
    .line 597
    invoke-virtual {v5}, Lqi/b;->g()Ljava/util/HashMap;

    .line 598
    .line 599
    .line 600
    move-result-object v5

    .line 601
    if-eqz v5, :cond_1c

    .line 602
    .line 603
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 604
    .line 605
    .line 606
    move-result v7

    .line 607
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    const-string v8, "size"

    .line 612
    .line 613
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    :cond_1c
    iget-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 617
    .line 618
    if-eqz v5, :cond_1d

    .line 619
    .line 620
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    if-eqz v5, :cond_1d

    .line 625
    .line 626
    invoke-virtual {v5}, Lt6/f;->r()Z

    .line 627
    .line 628
    .line 629
    move-result v5

    .line 630
    if-ne v5, v4, :cond_1d

    .line 631
    .line 632
    iget-object v5, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 633
    .line 634
    if-eqz v5, :cond_1d

    .line 635
    .line 636
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    if-eqz v5, :cond_1d

    .line 641
    .line 642
    invoke-virtual {v5}, Lt6/f;->s()V

    .line 643
    .line 644
    .line 645
    :cond_1d
    if-nez v1, :cond_1e

    .line 646
    .line 647
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 648
    .line 649
    if-eqz v1, :cond_1e

    .line 650
    .line 651
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    if-eqz v1, :cond_1e

    .line 656
    .line 657
    invoke-static {v1, v3, v4, v9}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    :cond_1e
    iget-boolean v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->H:Z

    .line 661
    .line 662
    if-eqz v1, :cond_20

    .line 663
    .line 664
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 665
    .line 666
    if-eqz v1, :cond_1f

    .line 667
    .line 668
    invoke-virtual {v1}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    if-eqz v1, :cond_1f

    .line 673
    .line 674
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 675
    .line 676
    .line 677
    :cond_1f
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 678
    .line 679
    if-eqz v1, :cond_20

    .line 680
    .line 681
    iget v2, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 682
    .line 683
    iget-wide v3, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->I:J

    .line 684
    .line 685
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-interface {v1, v2, v3}, Lzw/c;->y(ILjava/lang/Long;)V

    .line 690
    .line 691
    .line 692
    :cond_20
    if-eqz v6, :cond_21

    .line 693
    .line 694
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->k1()V

    .line 695
    .line 696
    .line 697
    :cond_21
    return-void

    .line 698
    :cond_22
    :goto_c
    iget-object v1, v0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 699
    .line 700
    if-eqz v1, :cond_23

    .line 701
    .line 702
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    if-eqz v1, :cond_23

    .line 707
    .line 708
    invoke-static {v1, v3, v4, v9}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    :cond_23
    return-void
.end method


# virtual methods
.method public final Y0()Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v1

    .line 35
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v4, v3

    .line 46
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ge v2, v4, :cond_2

    .line 53
    .line 54
    move-object v1, v3

    .line 55
    move v2, v4

    .line 56
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    :goto_0
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_4
    const/4 v0, 0x0

    .line 82
    :goto_1
    return-object v0
.end method

.method public Z0(Landroid/view/LayoutInflater;)Lbx/z;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lbx/z;->c(Landroid/view/LayoutInflater;)Lbx/z;

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

.method public final b1()Z
    .locals 5

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
    invoke-interface {v1}, Lim/b;->z()Z

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
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getRequireMemberType()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x1

    .line 62
    if-ne v3, v4, :cond_1

    .line 63
    .line 64
    return v4

    .line 65
    :cond_3
    return v0
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->Z0(Landroid/view/LayoutInflater;)Lbx/z;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final i1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->H:Z

    .line 2
    .line 3
    return v0
.end method

.method public initListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public initViewData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->initView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewModel()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->startLoading()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-class v1, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    new-instance v2, Landroidx/lifecycle/v0;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->y()Landroidx/lifecycle/b0;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->getSeasons()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {p0, v2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->U0(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->E0(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->M:Ljava/util/List;

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->U0(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    new-instance v0, Landroidx/lifecycle/v0;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s()Landroidx/lifecycle/b0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Lcom/transsnet/downloader/fragment/k0;

    .line 71
    .line 72
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/k0;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$c;

    .line 76
    .line 77
    invoke-direct {v3, v2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->w:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->loadData()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 93
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-interface {v0, v1, v2, v3}, Lzw/c;->m(ILjava/util/List;Z)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

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

.method public final j1()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->h1()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :cond_1
    return v2
.end method

.method public final l1(Z)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v0, "<get-TAG>(...)"

    .line 30
    .line 31
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "selectAll click, selectAll = "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v7, 0x4

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->H:Z

    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :cond_2
    const/16 v0, 0x1e

    .line 79
    .line 80
    if-le v2, v0, :cond_3

    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->m1(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n1(Z)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->onCreate(Landroid/os/Bundle;)V

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
    const-string v1, "extra_resolution"

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
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->m:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v1, "extra_resolution_position"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p1, v0

    .line 35
    :goto_1
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string v2, "extra_resolution_is_show_loading"

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move p1, v1

    .line 52
    :goto_2
    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->o:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v2, ""

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const-string v3, "extra_page_from"

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    :cond_3
    move-object p1, v2

    .line 71
    :cond_4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->p:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    const-string v3, "extra_last_page_from"

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    :cond_5
    move-object p1, v2

    .line 88
    :cond_6
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->q:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/4 v3, 0x0

    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    const-string v4, "extra_subject"

    .line 98
    .line 99
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    goto :goto_3

    .line 104
    :cond_7
    move-object p1, v3

    .line 105
    :goto_3
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    const-string v4, "extra_ops"

    .line 116
    .line 117
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_9

    .line 122
    .line 123
    :cond_8
    move-object p1, v2

    .line 124
    :cond_9
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->z:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_b

    .line 131
    .line 132
    const-string v4, "extra_target_resource_id"

    .line 133
    .line 134
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-nez p1, :cond_a

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_a
    move-object v2, p1

    .line 142
    :cond_b
    :goto_4
    iput-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->A:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_c

    .line 149
    .line 150
    const-string v2, "extra_show_premium_if_need"

    .line 151
    .line 152
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    goto :goto_5

    .line 157
    :cond_c
    move p1, v0

    .line 158
    :goto_5
    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->r:Z

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_d

    .line 165
    .line 166
    const-string v2, "extra_season"

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    goto :goto_6

    .line 173
    :cond_d
    move p1, v0

    .line 174
    :goto_6
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->s:I

    .line 175
    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_e

    .line 181
    .line 182
    const-string v2, "extra_series_position"

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    goto :goto_7

    .line 189
    :cond_e
    move p1, v0

    .line 190
    :goto_7
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->t:I

    .line 191
    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_f

    .line 197
    .line 198
    const-string v0, "extra_ep_index"

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    :cond_f
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->u:I

    .line 205
    .line 206
    add-int/2addr v0, v1

    .line 207
    mul-int/lit8 v0, v0, 0x32

    .line 208
    .line 209
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->E:I

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    if-eqz p1, :cond_10

    .line 216
    .line 217
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_10

    .line 222
    .line 223
    const-string v0, "page_from"

    .line 224
    .line 225
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->p:Ljava/lang/String;

    .line 226
    .line 227
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    if-eqz p1, :cond_11

    .line 235
    .line 236
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-eqz p1, :cond_11

    .line 241
    .line 242
    const-string v0, "last_page_from"

    .line 243
    .line 244
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->q:Ljava/lang/String;

    .line 245
    .line 246
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_13

    .line 254
    .line 255
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-eqz p1, :cond_13

    .line 260
    .line 261
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->x:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 262
    .line 263
    if-eqz v0, :cond_12

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    :cond_12
    const-string v0, "subject_id"

    .line 270
    .line 271
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    if-eqz p1, :cond_14

    .line 279
    .line 280
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    if-eqz p1, :cond_14

    .line 285
    .line 286
    const-string v0, "ops"

    .line 287
    .line 288
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->z:Ljava/lang/String;

    .line 289
    .line 290
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    if-eqz p1, :cond_15

    .line 298
    .line 299
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    if-eqz p1, :cond_15

    .line 304
    .line 305
    const-string v0, "type"

    .line 306
    .line 307
    const-string v1, "2"

    .line 308
    .line 309
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    :cond_15
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->K:Lkotlinx/coroutines/n0;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_c

    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string p1, "<get-TAG>(...)"

    .line 13
    .line 14
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->A()Landroidx/lifecycle/b0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/List;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v2, v6

    .line 48
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "--onHiddenChanged, size:"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v4, 0x4

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->A()Landroidx/lifecycle/b0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/util/List;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move-object v0, v6

    .line 91
    :goto_1
    check-cast v0, Ljava/util/Collection;

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v2, 0x0

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 105
    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    check-cast v0, Ljava/lang/Iterable;

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_7

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_4

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->A()Landroidx/lifecycle/b0;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Ljava/util/List;

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    move-object v4, v6

    .line 152
    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_6

    .line 164
    .line 165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_5

    .line 180
    .line 181
    move v4, v1

    .line 182
    goto :goto_4

    .line 183
    :cond_6
    move v4, v2

    .line 184
    :goto_4
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 185
    .line 186
    .line 187
    iget-object v5, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 188
    .line 189
    if-eqz v5, :cond_3

    .line 190
    .line 191
    invoke-virtual {v5, v3, v4}, Lcom/transsnet/downloader/adapter/g;->D1(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 196
    .line 197
    if-eqz v0, :cond_8

    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 200
    .line 201
    .line 202
    :cond_8
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->k1()V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 206
    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 225
    .line 226
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 227
    .line 228
    if-eqz v3, :cond_9

    .line 229
    .line 230
    invoke-virtual {v3}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    if-eqz v3, :cond_9

    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    goto :goto_6

    .line 245
    :cond_9
    move-object v3, v6

    .line 246
    :goto_6
    iget v4, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 247
    .line 248
    iget-object v5, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 249
    .line 250
    if-eqz v5, :cond_a

    .line 251
    .line 252
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    if-eqz v5, :cond_a

    .line 257
    .line 258
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v9, "onHiddenChanged, resolutionTabPosition = "

    .line 272
    .line 273
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string p1, ",checkedSize = "

    .line 280
    .line 281
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p1, ",unableSize = "

    .line 288
    .line 289
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p1, ", dataSize = "

    .line 296
    .line 297
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    const/4 v11, 0x4

    .line 308
    const/4 v12, 0x0

    .line 309
    const/4 v10, 0x0

    .line 310
    invoke-static/range {v7 .. v12}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 314
    .line 315
    if-eqz p1, :cond_c

    .line 316
    .line 317
    iget v3, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->n:I

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    iget v5, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->J:I

    .line 324
    .line 325
    add-int/2addr v4, v5

    .line 326
    iget-object v5, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 327
    .line 328
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-ne v4, v5, :cond_b

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_b
    move v1, v2

    .line 343
    :goto_7
    invoke-interface {p1, v3, v0, v1}, Lzw/c;->m(ILjava/util/List;Z)V

    .line 344
    .line 345
    .line 346
    :cond_c
    return-void
.end method

.method public final p1(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->M:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final q1(Lzw/c;)V
    .locals 1

    .line 1
    const-string v0, "control"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->L:Lzw/c;

    .line 7
    .line 8
    return-void
.end method

.method public retryLoadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l:Lcom/transsnet/downloader/adapter/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->startLoading()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->loadData()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
