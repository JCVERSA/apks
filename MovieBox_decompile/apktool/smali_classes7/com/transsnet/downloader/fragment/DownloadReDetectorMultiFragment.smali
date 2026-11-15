.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;
.super Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;
.source "source.java"

# interfaces
.implements Lzw/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment<",
        "Lbx/b0;",
        ">;",
        "Lzw/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u008b\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u008c\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\r\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"JQ\u0010+\u001a\u00020\u00062\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020#2\u0008\u0010&\u001a\u0004\u0018\u00010#2\u0008\u0010\'\u001a\u0004\u0018\u00010#2\u0008\u0010(\u001a\u0004\u0018\u00010#2\u0008\u0010)\u001a\u0004\u0018\u00010#2\u0006\u0010*\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008-\u0010\u0005J\u000f\u0010.\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00080\u0010\u0005J\u0019\u00103\u001a\u00020\u00062\u0008\u00102\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00083\u00104J\u0017\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020#H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010<\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010>\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008>\u0010=J\u000f\u0010?\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0005J\u000f\u0010A\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0005J\u000f\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0005J\u000f\u0010C\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008C\u0010\u0005J-\u0010G\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00102\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010F\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008G\u0010HJ!\u0010K\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00102\u0008\u0010J\u001a\u0004\u0018\u00010IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u0017\u0010N\u001a\u00020\u00062\u0006\u0010M\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0017\u0010P\u001a\u00020\u00062\u0006\u0010M\u001a\u00020;H\u0016\u00a2\u0006\u0004\u0008P\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010UR\u0016\u0010W\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010UR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0018\u0010]\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010UR\u0018\u0010(\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010UR\u0018\u0010`\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010UR\u0018\u0010b\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010UR\u0016\u0010e\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008c\u0010dR\u0016\u0010h\u001a\u00020I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010j\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010UR\u0014\u0010n\u001a\u00020k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010p\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010oR\u0016\u0010q\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010oR\u0018\u0010u\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR(\u0010y\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\"\u0010{\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020;0v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010xR$\u0010}\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010I0v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010xR\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\u0018\u0010\u0082\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010oR\u0018\u0010\u0084\u0001\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010dR!\u0010\u008a\u0001\u001a\u00030\u0085\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;",
        "Lbx/b0;",
        "Lzw/c;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
        "data",
        "p1",
        "(Ljava/util/List;)V",
        "V0",
        "Lcom/google/android/material/tabs/TabLayout;",
        "tabView",
        "",
        "right",
        "s1",
        "(Lcom/google/android/material/tabs/TabLayout;I)V",
        "Lcom/transsnet/downloader/bean/DownloadListBean;",
        "listBean",
        "m1",
        "(Lcom/transsnet/downloader/bean/DownloadListBean;)V",
        "o1",
        "n1",
        "k1",
        "j1",
        "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;",
        "Z0",
        "()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "X0",
        "()Ljava/util/List;",
        "",
        "pageName",
        "pageFrom",
        "subjectId",
        "postId",
        "ops",
        "resourceId",
        "taskId",
        "Y0",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "W0",
        "a1",
        "()I",
        "initViewData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "c1",
        "(Landroid/view/LayoutInflater;)Lbx/b0;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "isMonitorNetworkState",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "x0",
        "onDestroy",
        "position",
        "selectedList",
        "all",
        "m",
        "(ILjava/util/List;Z)V",
        "",
        "size",
        "y",
        "(ILjava/lang/Long;)V",
        "show",
        "x",
        "(Z)V",
        "U",
        "Lcom/transsnet/downloader/adapter/l;",
        "l",
        "Lcom/transsnet/downloader/adapter/l;",
        "mAdapter",
        "Ljava/lang/String;",
        "n",
        "lastPageFrom",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "o",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "p",
        "groupId",
        "q",
        "r",
        "targetResourceId",
        "s",
        "moduleName",
        "t",
        "Z",
        "isSelectAll",
        "u",
        "J",
        "localTotalSize",
        "v",
        "formatSize",
        "Lkotlinx/coroutines/n0;",
        "w",
        "Lkotlinx/coroutines/n0;",
        "downloadCoroutineScope",
        "I",
        "targetSeason",
        "curSeason",
        "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;",
        "z",
        "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;",
        "groupMainViewModel",
        "",
        "A",
        "Ljava/util/Map;",
        "checkedList",
        "B",
        "allCheckMap",
        "C",
        "sizeMap",
        "D",
        "Ljava/lang/Integer;",
        "currentResolution",
        "E",
        "resolution",
        "F",
        "showPremiumIfNeed",
        "Lcom/transsnet/downloader/manager/StartDownloadHelper;",
        "G",
        "Lkotlin/Lazy;",
        "b1",
        "()Lcom/transsnet/downloader/manager/StartDownloadHelper;",
        "startDownloadHelper",
        "H",
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
.field public static final H:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;


# instance fields
.field private A:Ljava/util/Map;

.field private B:Ljava/util/Map;

.field private C:Ljava/util/Map;

.field private D:Ljava/lang/Integer;

.field private E:I

.field private F:Z

.field private final G:Lkotlin/Lazy;

.field private l:Lcom/transsnet/downloader/adapter/l;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/transsion/moviedetailapi/bean/Subject;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:J

.field private v:Ljava/lang/String;

.field private final w:Lkotlinx/coroutines/n0;

.field private x:I

.field private y:I

.field private z:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->H:Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->v:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->w:Lkotlinx/coroutines/n0;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->y:I

    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    .line 31
    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->B:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->C:Ljava/util/Map;

    .line 45
    .line 46
    new-instance v0, Lcom/transsnet/downloader/fragment/b3;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/b3;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->G:Lkotlin/Lazy;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic H0()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->r1()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic I0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->i1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Q0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->W0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic T0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->k1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic U0(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final V0(Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v1, v0, Lbx/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    const-string v2, "subjectTab"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    if-le v3, v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v4, v5

    .line 26
    :goto_0
    if-eqz v4, :cond_1

    .line 27
    .line 28
    move v3, v5

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 v3, 0x8

    .line 31
    .line 32
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->p1(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    check-cast p1, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    move v1, v5

    .line 45
    move v3, v1

    .line 46
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    add-int/lit8 v6, v1, 0x1

    .line 57
    .line 58
    if-gez v1, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 61
    .line 62
    .line 63
    :cond_2
    check-cast v4, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    iget v7, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->x:I

    .line 70
    .line 71
    if-ne v4, v7, :cond_3

    .line 72
    .line 73
    move v3, v1

    .line 74
    :cond_3
    move v1, v6

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object p1, v0, Lbx/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 77
    .line 78
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/16 v1, 0xc

    .line 82
    .line 83
    invoke-static {v1}, Llj/a;->b(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-direct {p0, p1, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->s1(Lcom/google/android/material/tabs/TabLayout;I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lbx/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_5

    .line 97
    .line 98
    iget-object p1, v0, Lbx/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    .line 99
    .line 100
    invoke-virtual {p1, v3, v5}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void
.end method

.method private final W0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lbx/b0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->B:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->a1()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private final X0()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method private final Y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "page_from"

    .line 7
    .line 8
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string p2, "subject_id"

    .line 12
    .line 13
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v1, "post_id"

    .line 17
    .line 18
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string p4, "ops"

    .line 22
    .line 23
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string p4, "resource_id"

    .line 27
    .line 28
    invoke-interface {v0, p4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string p5, "task_id"

    .line 32
    .line 33
    invoke-interface {v0, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string p5, "module_name"

    .line 37
    .line 38
    iget-object p7, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->s:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v0, p5, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p5, Lqi/h;->a:Lqi/h;

    .line 44
    .line 45
    const-string p7, "download_click"

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    move-object p1, p7

    .line 50
    :cond_0
    invoke-virtual {p5, p1, p7, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p4, p6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p2, p7, p1, p3}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lbx/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/adapter/l;->g(I)Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_1
    return-object v0
.end method

.method private final a1()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method private final b1()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->G:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 3

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
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->X0()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 28
    .line 29
    sget p1, Lcom/transsnet/downloader/R$string;->download_unselected_tips:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "download_last_resolution"

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    const-class v1, Lwj/f;

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lwj/f;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->D:Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 p1, 0x0

    .line 87
    :goto_0
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$b;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 93
    .line 94
    invoke-interface {v0, v1, p1, v2, p0}, Lwj/f;->e(Ljava/lang/Integer;Ljava/lang/String;Lwj/g;Lcom/transsion/memberapi/MemberSceneType;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method private static final e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;ILcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "<get-TAG>(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->y:I

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v4, "\u83b7\u53d6\u5f53\u524d\u5b63\u8ddf\u5206\u8fa8\u7387\u7684\u4fe1\u606f,resolution:"

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ", curSeason:"

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->getSubjectType()Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/Subject;->setSubjectType(Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;->getSeasons()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->V0(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method private static final i1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/transsnet/downloader/bean/DownloadListBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m1(Lcom/transsnet/downloader/bean/DownloadListBean;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/b0;->c:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->q0()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lbx/b0;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lbx/b0;->h:Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/transsnet/downloader/fragment/e3;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/e3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lbx/b0;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, v0, Lbx/b0;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    new-instance v1, Lcom/transsnet/downloader/fragment/f3;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/f3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lbx/b0;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, v0, Lbx/b0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v1, Lcom/transsnet/downloader/fragment/g3;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/g3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lbx/b0;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, v0, Lbx/b0;->b:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    new-instance v1, Lcom/transsnet/downloader/fragment/h3;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/h3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

.method private final j1()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->X0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->i()Landroidx/lifecycle/b0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v2, Lcom/transsnet/downloader/viewmodel/b;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-object v4, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->v:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 38
    .line 39
    invoke-direct {v2, v3, v4, v0, v5}, Lcom/transsnet/downloader/viewmodel/b;-><init>(ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p()Landroidx/lifecycle/b0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const/4 v1, 0x3

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method private final k1()V
    .locals 15

    .line 1
    iget-wide v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->u:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->u0(J)Z

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
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lbx/b0;

    .line 15
    .line 16
    const-string v1, "download"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lbx/b0;->e:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 32
    .line 33
    const-string v3, "DownloadReDetectorGroupMainFragment --> onDownload() --> \u5f53\u524d\u6b63\u5728\u5168\u9009\u4e2d"

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lwf/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v0, "<get-TAG>(...)"

    .line 50
    .line 51
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 v8, 0x4

    .line 55
    const/4 v9, 0x0

    .line 56
    const-string v6, "onDownload "

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lbx/b0;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, v0, Lbx/b0;->u:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lbx/b0;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, v0, Lbx/b0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lbx/b0;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, v0, Lbx/b0;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lbx/b0;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    iget-object v0, v0, Lbx/b0;->k:Landroid/widget/ProgressBar;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->X0()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    move-object v3, v0

    .line 127
    check-cast v3, Ljava/lang/Iterable;

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const/4 v4, 0x0

    .line 134
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_7

    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    add-int/lit8 v6, v4, 0x1

    .line 145
    .line 146
    if-gez v4, :cond_6

    .line 147
    .line 148
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 149
    .line 150
    .line 151
    :cond_6
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 152
    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    const-string v4, "toString(...)"

    .line 162
    .line 163
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v14}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v8, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v9, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    iget-object v12, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    move-object v7, p0

    .line 188
    invoke-direct/range {v7 .. v14}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Y0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 192
    .line 193
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v10, "\u5267\u96c6\u591a\u8d44\u6e90\uff0c\u4e0b\u8f7d\u70b9\u51fb\uff0c\u5f00\u59cb\u4e0b\u8f7d: subjectId = "

    .line 211
    .line 212
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v7, ",resourceId = "

    .line 219
    .line 220
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v7, ", name = "

    .line 227
    .line 228
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    filled-new-array {v5}, [Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v4, v1, v5, v2}, Lwf/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 243
    .line 244
    .line 245
    move v4, v6

    .line 246
    goto :goto_0

    .line 247
    :cond_7
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->p0()Lcom/transsnet/downloader/manager/g;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v1, v0}, Lcom/transsnet/downloader/manager/g;->C(Ljava/util/List;)V

    .line 252
    .line 253
    .line 254
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->b1()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    .line 259
    .line 260
    .line 261
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->w:Lkotlinx/coroutines/n0;

    .line 262
    .line 263
    new-instance v5, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$onDownload$2;

    .line 264
    .line 265
    const/4 v1, 0x0

    .line 266
    invoke-direct {v5, v0, p0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$onDownload$2;-><init>(Ljava/util/List;Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lkotlin/coroutines/Continuation;)V

    .line 267
    .line 268
    .line 269
    const/4 v6, 0x3

    .line 270
    const/4 v7, 0x0

    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 274
    .line 275
    .line 276
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    div-int/lit8 v0, v0, 0x14

    .line 281
    .line 282
    mul-int/lit8 v0, v0, 0x64

    .line 283
    .line 284
    int-to-long v0, v0

    .line 285
    const-wide/16 v2, 0x12c

    .line 286
    .line 287
    add-long/2addr v0, v2

    .line 288
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Lbx/b0;

    .line 293
    .line 294
    if-eqz v2, :cond_8

    .line 295
    .line 296
    iget-object v2, v2, Lbx/b0;->k:Landroid/widget/ProgressBar;

    .line 297
    .line 298
    if-eqz v2, :cond_8

    .line 299
    .line 300
    new-instance v3, Lcom/transsnet/downloader/fragment/i3;

    .line 301
    .line 302
    invoke-direct {v3, p0}, Lcom/transsnet/downloader/fragment/i3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    .line 307
    .line 308
    :cond_8
    return-void
.end method

.method private static final l1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->j1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m1(Lcom/transsnet/downloader/bean/DownloadListBean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getResolutionList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->F:Z

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getResolution()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->E:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/adapter/l;->m(Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    return-void
.end method

.method private final n1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->j1()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lbx/b0;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lbx/b0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    xor-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->t:Z

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->t:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->l1(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private final o1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->b1()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    const-class v1, Lim/b;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lim/b;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->Z0()Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->Y0()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$c;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$c;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Lim/b;->g(Ljava/lang/Integer;Lim/a;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n1()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method private final p1(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/transsnet/downloader/adapter/l;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "requireActivity(...)"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, p0}, Lcom/transsnet/downloader/adapter/l;-><init>(Landroidx/fragment/app/FragmentActivity;Lzw/c;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->k(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->o(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->p:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->i(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->l(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->j(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->F:Z

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->n(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->r:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->p(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->x:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/adapter/l;->q(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/transsnet/downloader/adapter/l;->setData(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    .line 67
    .line 68
    iget-object p1, v0, Lbx/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 74
    .line 75
    iget-object v1, v0, Lbx/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 76
    .line 77
    iget-object v2, v0, Lbx/b0;->w:Landroidx/viewpager2/widget/ViewPager2;

    .line 78
    .line 79
    new-instance v3, Lcom/transsnet/downloader/fragment/j3;

    .line 80
    .line 81
    invoke-direct {v3, p0}, Lcom/transsnet/downloader/fragment/j3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lbx/b0;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 91
    .line 92
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$e;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$e;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    return-void
.end method

.method private static final q1(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->l:Lcom/transsnet/downloader/adapter/l;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/transsnet/downloader/adapter/l;->h(I)Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "Unit "

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static final r1()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final s1(Lcom/google/android/material/tabs/TabLayout;I)V
    .locals 6

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    invoke-static {v0}, Llj/a;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 27
    .line 28
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v4, Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "getChildAt(...)"

    .line 38
    .line 39
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 47
    .line 48
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 52
    .line 53
    invoke-virtual {v4, v2, v2, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 54
    .line 55
    .line 56
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public U(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lbx/b0;->e:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p1, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public c1(Landroid/view/LayoutInflater;)Lbx/b0;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lbx/b0;->c(Landroid/view/LayoutInflater;)Lbx/b0;

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
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->c1(Landroid/view/LayoutInflater;)Lbx/b0;

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
    return-void
.end method

.method public initViewData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->initView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewModel()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "download_last_resolution"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->y()Landroidx/lifecycle/b0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v2, Lcom/transsnet/downloader/fragment/c3;

    .line 27
    .line 28
    invoke-direct {v2, p0, v0}, Lcom/transsnet/downloader/fragment/c3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;I)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;

    .line 32
    .line 33
    invoke-direct {v0, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    new-instance v0, Landroidx/lifecycle/v0;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 42
    .line 43
    .line 44
    const-class v1, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->s()Landroidx/lifecycle/b0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/transsnet/downloader/fragment/d3;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/d3;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->z:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->u(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->v()V

    .line 97
    .line 98
    .line 99
    :cond_2
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
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m(ILjava/util/List;Z)V
    .locals 8

    .line 1
    const-string v0, "selectedList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->B:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 48
    .line 49
    iget-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->A:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {p3}, Ljava/util/Map;->size()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "DownloadReDetectorGroupMainFragment --> onSelectData() --> selectedList.size = "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const/4 v6, 0x4

    .line 73
    const/4 v7, 0x0

    .line 74
    const-string v3, "zxb_log"

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    check-cast p2, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    .line 88
    move-wide v2, v0

    .line 89
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_3

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 100
    .line 101
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->isUnable()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_1

    .line 106
    .line 107
    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    if-eqz p3, :cond_2

    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move-wide v4, v0

    .line 119
    :goto_1
    add-long/2addr v2, v4

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->y(ILjava/lang/Long;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->W0()V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

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
    const-string v0, ""

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string v1, "extra_page_from"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    :cond_0
    move-object p1, v0

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const-string v1, "extra_last_page_from"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    :cond_2
    move-object p1, v0

    .line 38
    :cond_3
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    const-string v2, "extra_subject"

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    move-object p1, v1

    .line 55
    :goto_0
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    const-string v2, "extra_ops"

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-nez p1, :cond_6

    .line 72
    .line 73
    :cond_5
    move-object p1, v0

    .line 74
    :cond_6
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    const-string v2, "extra_target_resource_id"

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_8

    .line 89
    .line 90
    :cond_7
    move-object p1, v0

    .line 91
    :cond_8
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->r:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_a

    .line 98
    .line 99
    const-string v2, "extra_module_name"

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-nez p1, :cond_9

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_9
    move-object v0, p1

    .line 109
    :cond_a
    :goto_1
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->s:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_b

    .line 116
    .line 117
    const-string v0, "extra_season"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    goto :goto_2

    .line 124
    :cond_b
    const/4 p1, 0x0

    .line 125
    :goto_2
    iput p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->x:I

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_c

    .line 132
    .line 133
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_c

    .line 138
    .line 139
    const-string v0, "page_from"

    .line 140
    .line 141
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->m:Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_d

    .line 151
    .line 152
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_d

    .line 157
    .line 158
    const-string v0, "last_page_from"

    .line 159
    .line 160
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->n:Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_f

    .line 170
    .line 171
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_f

    .line 176
    .line 177
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->o:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 178
    .line 179
    if-eqz v0, :cond_e

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :cond_e
    const-string v0, "subject_id"

    .line 186
    .line 187
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_10

    .line 195
    .line 196
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    if-eqz p1, :cond_10

    .line 201
    .line 202
    const-string v0, "ops"

    .line 203
    .line 204
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->q:Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_11

    .line 214
    .line 215
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_11

    .line 220
    .line 221
    const-string v0, "type"

    .line 222
    .line 223
    const-string v1, "2"

    .line 224
    .line 225
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    :cond_11
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Y(Landroidx/lifecycle/b0;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->A()Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->loadDefaultData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public x(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/b0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, v0, Lbx/b0;->d:Lcom/noober/background/view/BLFrameLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p1, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->x0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->G0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->F0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public y(ILjava/lang/Long;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->C:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMultiFragment;->C:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .line 42
    move-wide v2, v0

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Ljava/lang/Long;

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-wide v4, v0

    .line 69
    :goto_1
    add-long/2addr v2, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    cmp-long p1, v2, v0

    .line 72
    .line 73
    if-gtz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lbx/b0;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iget-object p1, p1, Lbx/b0;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    sget p2, Lcom/transsnet/downloader/R$string;->str_download:I

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lbx/b0;

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p1, Lbx/b0;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    sget v0, Lcom/transsnet/downloader/R$string;->str_download:I

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, " \u00b7 "

    .line 124
    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    invoke-static {v2, v3, v0}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_2
    return-void
.end method
