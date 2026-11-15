.class public abstract Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lbx/n0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0011\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u0019\u0010\r\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\tJ\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u0015\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\'\u0010&\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u0008&\u0010\'J\'\u0010(\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u0008(\u0010\'J\'\u0010)\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u0008)\u0010\'J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0014\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008.\u0010\u0004J\'\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u00081\u00102J\'\u00103\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u00083\u00102J\u001f\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u0002042\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u00088\u0010\u0004J\u001f\u00109\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u00089\u0010:J\'\u0010;\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0014\u00a2\u0006\u0004\u0008;\u00102J\'\u0010<\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H&\u00a2\u0006\u0004\u0008<\u00102J\u000f\u0010=\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0004J1\u0010B\u001a\u00020\u00052\u0006\u0010>\u001a\u00020\u00142\u000e\u0010@\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010?2\u0008\u0008\u0002\u0010A\u001a\u00020\u0014H\u0014\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020\u0005H\u0004\u00a2\u0006\u0004\u0008D\u0010\u0004J\u001d\u0010G\u001a\u00020\u00052\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020\u001a0EH\u0004\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008I\u0010\u0004J\u000f\u0010J\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008J\u0010\u0004J\u0017\u0010L\u001a\u00020\u00052\u0006\u0010K\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008N\u0010\u0004J\u000f\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008R\u0010\tJ\r\u0010S\u001a\u00020\u0007\u00a2\u0006\u0004\u0008S\u0010\tJ\u001f\u0010V\u001a\u00020\u00142\u0006\u0010%\u001a\u00020$2\u0006\u0010U\u001a\u00020TH\u0004\u00a2\u0006\u0004\u0008V\u0010WJ\u0017\u0010Y\u001a\u00020\"2\u0006\u0010X\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u0005H\u0004\u00a2\u0006\u0004\u0008[\u0010\u0004R\u001a\u0010_\u001a\u00020\u00078\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010\tR$\u0010e\u001a\u0004\u0018\u00010*8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010-R\u001b\u0010k\u001a\u00020f8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010h\u001a\u0004\u0008i\u0010jR\u001b\u0010p\u001a\u00020l8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008m\u0010h\u001a\u0004\u0008n\u0010oR\u001b\u0010u\u001a\u00020q8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010h\u001a\u0004\u0008s\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u001a\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u00070z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0017\u0010\u0080\u0001\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\'\u0010\u0085\u0001\u001a\u00020\u00078\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0081\u0001\u0010]\u001a\u0005\u0008\u0082\u0001\u0010\t\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0088\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u0019\u0010\u008a\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u0087\u0001\u00a8\u0006\u008b\u0001"
    }
    d2 = {
        "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lbx/n0;",
        "<init>",
        "()V",
        "",
        "initExposureHelper",
        "",
        "z0",
        "()Ljava/lang/String;",
        "G0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "F0",
        "(Landroid/view/LayoutInflater;)Lbx/n0;",
        "getPageStateLayoutTitle",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "initViewData",
        "K0",
        "Landroidx/recyclerview/widget/DiffUtil$e;",
        "Lcom/transsnet/downloader/ugc/adapter/c;",
        "v0",
        "()Landroidx/recyclerview/widget/DiffUtil$e;",
        "J0",
        "Landroidx/recyclerview/widget/RecyclerView$l;",
        "w0",
        "()Landroidx/recyclerview/widget/RecyclerView$l;",
        "item",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "U0",
        "(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V",
        "T0",
        "V0",
        "Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;",
        "adapter",
        "d1",
        "(Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;)V",
        "e1",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "bean",
        "R0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V",
        "Q0",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "video",
        "X0",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V",
        "Z0",
        "W0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;I)V",
        "Y0",
        "S0",
        "initViewModel",
        "hasMore",
        "",
        "videos",
        "isFromCache",
        "h1",
        "(ZLjava/util/List;Z)V",
        "b1",
        "",
        "currentList",
        "a1",
        "(Ljava/util/List;)V",
        "initListener",
        "retryLoadData",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onDestroyView",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "E0",
        "getPageName",
        "",
        "progress",
        "g1",
        "(IJ)Z",
        "isShowTitleLayout",
        "getEmptyView",
        "(Z)Landroid/view/View;",
        "u0",
        "a",
        "Ljava/lang/String;",
        "getTAG",
        "TAG",
        "b",
        "Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;",
        "D0",
        "()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;",
        "setStaggeredAdapter",
        "staggeredAdapter",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "c",
        "Lkotlin/Lazy;",
        "x0",
        "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "downloadViewModel",
        "Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;",
        "d",
        "B0",
        "()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;",
        "forYouViewModel",
        "Lcom/transsnet/downloader/ugc/viewmodel/b;",
        "e",
        "A0",
        "()Lcom/transsnet/downloader/ugc/viewmodel/b;",
        "forYouCacheViewModel",
        "Lbj/b;",
        "f",
        "Lbj/b;",
        "exposureHelper",
        "",
        "g",
        "Ljava/util/Set;",
        "exposedForYouVideoIds",
        "h",
        "J",
        "pageLoadStartTime",
        "i",
        "C0",
        "c1",
        "(Ljava/lang/String;)V",
        "modeArg",
        "j",
        "Z",
        "forYouRequested",
        "k",
        "isLoadingForYou",
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

.field private b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private f:Lbj/b;

.field private final g:Ljava/util/Set;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 4

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
    const-string v2, "UGCStaggered_"

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
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

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
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$2;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->c:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$viewModels$default$1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 56
    .line 57
    .line 58
    const-class v1, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$viewModels$default$2;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$viewModels$default$3;

    .line 70
    .line 71
    invoke-direct {v3, v0, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->d:Lkotlin/Lazy;

    .line 79
    .line 80
    const-class v0, Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$3;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$4;

    .line 92
    .line 93
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->e:Lkotlin/Lazy;

    .line 101
    .line 102
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->g:Ljava/util/Set;

    .line 108
    .line 109
    const-string v0, "ugc_home"

    .line 110
    .line 111
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 112
    .line 113
    return-void
.end method

.method private final G0()V
    .locals 11

    .line 1
    new-instance v6, Lcom/transsnet/downloader/ugc/fragment/r0;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsnet/downloader/ugc/fragment/r0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

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
    new-instance v6, Lcom/transsnet/downloader/ugc/fragment/s0;

    .line 44
    .line 45
    invoke-direct {v6, p0}, Lcom/transsnet/downloader/ugc/fragment/s0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

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

.method private static final H0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;
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
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

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
    const-string v7, "LocalVideoEvent resourceId:"

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
    const-string v0, ", readProgress:"

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
    const-string v0, ", isSeries:"

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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 62
    .line 63
    const/4 v1, -0x1

    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

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
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 89
    .line 90
    instance-of v5, v4, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 91
    .line 92
    if-eqz v5, :cond_0

    .line 93
    .line 94
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getResourceId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    move-object v3, p1

    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_0
    instance-of v5, v4, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 118
    .line 119
    if-eqz v5, :cond_1

    .line 120
    .line 121
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getResourceId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    goto :goto_1

    .line 140
    :cond_1
    move v4, v2

    .line 141
    :goto_1
    if-eqz v4, :cond_2

    .line 142
    .line 143
    move v1, v3

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    :goto_2
    if-ltz v1, :cond_f

    .line 149
    .line 150
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    :cond_4
    if-ge v1, v2, :cond_f

    .line 159
    .line 160
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 161
    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    const/4 v0, 0x0

    .line 172
    :goto_3
    instance-of v2, v0, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 173
    .line 174
    const-wide/16 v3, 0x0

    .line 175
    .line 176
    if-eqz v2, :cond_a

    .line 177
    .line 178
    move-object v2, v0

    .line 179
    check-cast v2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    cmp-long v5, v5, v3

    .line 190
    .line 191
    if-ltz v5, :cond_6

    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    invoke-virtual {v2, v5, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 198
    .line 199
    .line 200
    :cond_6
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    cmp-long v3, v5, v3

    .line 205
    .line 206
    if-ltz v3, :cond_7

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    .line 209
    .line 210
    .line 211
    move-result-wide v3

    .line 212
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 217
    .line 218
    .line 219
    :cond_7
    check-cast v0, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v3, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 226
    .line 227
    if-eqz v3, :cond_8

    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    if-eqz v3, :cond_8

    .line 234
    .line 235
    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 240
    .line 241
    :cond_8
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getRefreshItemAll()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_9

    .line 246
    .line 247
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 248
    .line 249
    if-eqz p1, :cond_f

    .line 250
    .line 251
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_5

    .line 255
    .line 256
    :cond_9
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 257
    .line 258
    if-eqz p1, :cond_f

    .line 259
    .line 260
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_a
    instance-of v2, v0, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 265
    .line 266
    if-eqz v2, :cond_f

    .line 267
    .line 268
    move-object v2, v0

    .line 269
    check-cast v2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    .line 276
    .line 277
    .line 278
    move-result-wide v5

    .line 279
    cmp-long v5, v5, v3

    .line 280
    .line 281
    if-ltz v5, :cond_b

    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    .line 284
    .line 285
    .line 286
    move-result-wide v5

    .line 287
    invoke-virtual {v2, v5, v6}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 288
    .line 289
    .line 290
    :cond_b
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    .line 291
    .line 292
    .line 293
    move-result-wide v5

    .line 294
    cmp-long v3, v5, v3

    .line 295
    .line 296
    if-ltz v3, :cond_c

    .line 297
    .line 298
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    .line 299
    .line 300
    .line 301
    move-result-wide v3

    .line 302
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 307
    .line 308
    .line 309
    :cond_c
    check-cast v0, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 310
    .line 311
    invoke-virtual {v0, v2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->a(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iget-object v3, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 316
    .line 317
    if-eqz v3, :cond_d

    .line 318
    .line 319
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    if-eqz v3, :cond_d

    .line 324
    .line 325
    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 330
    .line 331
    :cond_d
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getRefreshItemAll()Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_e

    .line 336
    .line 337
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 338
    .line 339
    if-eqz p1, :cond_f

    .line 340
    .line 341
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 342
    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_e
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 346
    .line 347
    if-eqz p1, :cond_f

    .line 348
    .line 349
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :goto_4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 354
    .line 355
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 356
    .line 357
    const/16 v5, 0x8

    .line 358
    .line 359
    const/4 v6, 0x0

    .line 360
    const-string v2, "LocalVideoEvent error"

    .line 361
    .line 362
    const/4 v4, 0x0

    .line 363
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_f
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 367
    .line 368
    return-object p0
.end method

.method private static final I0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 7

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
    if-eqz v0, :cond_b

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
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_0
    :try_start_0
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
    if-eqz v0, :cond_5

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
    goto :goto_2

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_5

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
    if-eqz v4, :cond_5

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 61
    .line 62
    instance-of v5, v4, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 63
    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getSubjectId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    move-object v3, p1

    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_2
    instance-of v5, v4, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 90
    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getSubjectId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    goto :goto_1

    .line 112
    :cond_3
    move v4, v1

    .line 113
    :goto_1
    if-eqz v4, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    :goto_2
    move v3, v2

    .line 120
    :goto_3
    if-ltz v3, :cond_6

    .line 121
    .line 122
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 123
    .line 124
    if-eqz p1, :cond_b

    .line 125
    .line 126
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 132
    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    move v3, v1

    .line 146
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_a

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 157
    .line 158
    instance-of v5, v4, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 159
    .line 160
    if-eqz v5, :cond_7

    .line 161
    .line 162
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getResourceId()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    goto :goto_5

    .line 181
    :cond_7
    instance-of v5, v4, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 182
    .line 183
    if-eqz v5, :cond_8

    .line 184
    .line 185
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getResourceId()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    goto :goto_5

    .line 204
    :cond_8
    move v4, v1

    .line 205
    :goto_5
    if-eqz v4, :cond_9

    .line 206
    .line 207
    move v2, v3

    .line 208
    goto :goto_6

    .line 209
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_a
    :goto_6
    if-ltz v2, :cond_b

    .line 213
    .line 214
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 215
    .line 216
    if-eqz p1, :cond_b

    .line 217
    .line 218
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .line 220
    .line 221
    goto :goto_8

    .line 222
    :goto_7
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 223
    .line 224
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 225
    .line 226
    const/16 v5, 0x8

    .line 227
    .line 228
    const/4 v6, 0x0

    .line 229
    const-string v2, "DownloadRefreshEvent error"

    .line 230
    .line 231
    const/4 v4, 0x0

    .line 232
    invoke-static/range {v0 .. v6}, Lwf/a$a;->k(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_b
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 236
    .line 237
    return-object p0
.end method

.method private static final L0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getEmptyView(Z)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static final M0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "null cannot be cast to non-null type com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredItem"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->U0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final N0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "null cannot be cast to non-null type com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredItem"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->T0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final O0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

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
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "null cannot be cast to non-null type com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredItem"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->V0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method private static final P0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Iterable;

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    :goto_1
    move-object v5, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :goto_2
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    :cond_4
    move v4, v1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    const/4 p1, 0x0

    .line 92
    :goto_3
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->z0()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-boolean v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->j:Z

    .line 97
    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->h()Landroidx/lifecycle/b0;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/ugc/viewmodel/b;->d(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_6

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v0, v5, p1, v4}, Lcom/transsnet/downloader/ugc/viewmodel/b;->g(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_6
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v0, v5, p1, v4}, Lcom/transsnet/downloader/ugc/viewmodel/b;->f(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_4
    const/4 v7, 0x4

    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v6, 0x0

    .line 142
    move-object v3, p0

    .line 143
    invoke-static/range {v3 .. v8}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i1(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;ZLjava/util/List;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p0
.end method

.method private static final f1(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v3, "foryou loadmore--- isLoadingForYou, skip"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 19
    .line 20
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->z0()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/ugc/viewmodel/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->i()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->k(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iput-boolean v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->k:Z

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, v1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->g(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-static {p0, v1, v2, p1}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public static synthetic i1(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;ZLjava/util/List;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->h1(ZLjava/util/List;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: updateForYouList"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final initExposureHelper()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->f:Lbj/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lbj/b;

    .line 7
    .line 8
    new-instance v3, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const v2, 0x3f19999a    # 0.6f

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v1, v0

    .line 20
    invoke-direct/range {v1 .. v6}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {v0, v1}, Lbj/b;->n(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->f:Lbj/b;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lbx/n0;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lbx/n0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->f:Lbj/b;

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public static synthetic j0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->y0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j1(Lcom/transsnet/downloader/ugc/adapter/c;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    instance-of p0, p0, Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
.end method

.method public static synthetic k0(Lcom/transsnet/downloader/ugc/adapter/c;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->j1(Lcom/transsnet/downloader/ugc/adapter/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic l0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->N0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->P0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->M0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->I0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->L0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->f1(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->O0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic s0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->H0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->g:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final y0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "/main/tab"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "bottomTab"

    .line 8
    .line 9
    const-string v2, "HOME"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private final z0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->E0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method protected final A0()Lcom/transsnet/downloader/ugc/viewmodel/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final C0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract E0()Ljava/lang/String;
.end method

.method public F0(Landroid/view/LayoutInflater;)Lbx/n0;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lbx/n0;->c(Landroid/view/LayoutInflater;)Lbx/n0;

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

.method protected J0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/n0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/n0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsnet/downloader/ugc/widget/SafeStaggeredGridLayoutManager;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-direct {v1, v3, v2}, Lcom/transsnet/downloader/ugc/widget/SafeStaggeredGridLayoutManager;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f0(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->w0()Landroidx/recyclerview/widget/RecyclerView$l;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method protected K0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/u0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/u0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->v0()Landroidx/recyclerview/widget/DiffUtil$e;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/v0;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/v0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 24
    .line 25
    .line 26
    instance-of v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget v1, Lcom/transsnet/downloader/R$id;->iv_more:I

    .line 31
    .line 32
    sget v2, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 33
    .line 34
    filled-new-array {v1, v2}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget v1, Lcom/transsnet/downloader/R$id;->iv_more:I

    .line 43
    .line 44
    filled-new-array {v1}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/w0;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/w0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/x0;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/x0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->y1(Lr6/e;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->d1(Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 71
    .line 72
    return-void
.end method

.method protected Q0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "bean"

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
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xe

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0xa

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->W0(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->Y0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method protected R0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 0

    .line 1
    const-string p3, "bean"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "view"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public abstract S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
.end method

.method protected T0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "item"

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
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget v1, Lcom/transsnet/downloader/R$id;->iv_more:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget v1, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 34
    .line 35
    if-ne v0, v1, :cond_3

    .line 36
    .line 37
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->Y0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sget v1, Lcom/transsnet/downloader/R$id;->iv_more:I

    .line 56
    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    .line 59
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget v1, Lcom/transsnet/downloader/R$id;->iv_cover:I

    .line 70
    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->Y0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method protected U0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "item"

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
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isMore()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->Z0()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->R0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->Q0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    instance-of p2, p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->X0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method protected V0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V
    .locals 4

    .line 1
    const-string v0, "item"

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
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method protected W0(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 6

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v0, v1

    .line 27
    :goto_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const-string v2, "/download/ugc_collection_list"

    .line 31
    .line 32
    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "Collection"

    .line 41
    .line 42
    const-string v5, "name"

    .line 43
    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move-object v4, v3

    .line 61
    :goto_2
    invoke-virtual {v2, v5, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "collection_id"

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v3, v4, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 72
    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-nez v3, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    move-object v4, v3

    .line 83
    :goto_4
    invoke-virtual {v2, v5, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "subject_id"

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v3, v4, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 94
    .line 95
    .line 96
    :goto_5
    const-string p1, "parent_position"

    .line 97
    .line 98
    invoke-virtual {v2, p1, p2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 p2, 0x2

    .line 103
    invoke-static {p1, v0, v1, p2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method protected X0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 2

    .line 1
    const-string v0, "video"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

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
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v1, v0, v1}, Lhu/b;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/transsnet/downloader/ugc/util/e;->a:Lcom/transsnet/downloader/ugc/util/e;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getPageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1, p1, p2}, Lcom/transsnet/downloader/ugc/util/e;->b(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method protected Y0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "bean"

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
    sget-object v0, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->a:Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getPageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p2, v1, p3, p1}, Lcom/transsnet/downloader/ugc/util/UGCDownloadOpenUtil;->r(Landroid/view/View;Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadBean;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected Z0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const-string v1, "/download/ugc_my_downloads"

    .line 18
    .line 19
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v1, v0, v2, v3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected final a1(Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, "currentList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "ugc_home"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    move-object v3, v2

    .line 39
    check-cast v3, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 40
    .line 41
    instance-of v4, v3, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    instance-of v3, v3, Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    instance-of v4, v3, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_9

    .line 128
    .line 129
    check-cast v2, Ljava/lang/Iterable;

    .line 130
    .line 131
    new-instance v3, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_a

    .line 145
    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    move-object v5, v4

    .line 151
    check-cast v5, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 152
    .line 153
    instance-of v6, v5, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 154
    .line 155
    if-nez v6, :cond_8

    .line 156
    .line 157
    instance-of v5, v5, Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 158
    .line 159
    if-eqz v5, :cond_7

    .line 160
    .line 161
    :cond_8
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    :cond_a
    check-cast v3, Ljava/lang/Iterable;

    .line 170
    .line 171
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_10

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 186
    .line 187
    instance-of v4, v3, Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 188
    .line 189
    if-eqz v4, :cond_f

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_c

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_e

    .line 207
    .line 208
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 213
    .line 214
    instance-of v5, v5, Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 215
    .line 216
    if-eqz v5, :cond_d

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_e
    :goto_5
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_f
    instance-of v4, v3, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 224
    .line 225
    if-eqz v4, :cond_b

    .line 226
    .line 227
    move-object v4, v3

    .line 228
    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 229
    .line 230
    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    if-eqz v4, :cond_b

    .line 239
    .line 240
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_b

    .line 245
    .line 246
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_10
    return-void
.end method

.method protected final b1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ugc_home"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->z0()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/ugc/viewmodel/b;->d(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/ugc/viewmodel/b;->c(Ljava/lang/String;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "requestForYouIfNeeded: use cached data, cacheKey="

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v6, ", size="

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/4 v7, 0x4

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/ugc/viewmodel/b;->c(Ljava/lang/String;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->A0()Lcom/transsnet/downloader/ugc/viewmodel/b;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3, v0}, Lcom/transsnet/downloader/ugc/viewmodel/b;->e(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->h1(ZLjava/util/List;Z)V

    .line 91
    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->j:Z

    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->j:Z

    .line 97
    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->h()Landroidx/lifecycle/b0;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-nez v0, :cond_2

    .line 113
    .line 114
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 115
    .line 116
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->j:Z

    .line 123
    .line 124
    iput-boolean v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->k:Z

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->g(Z)V

    .line 131
    .line 132
    .line 133
    :cond_2
    return-void
.end method

.method protected final c1(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method protected d1(Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected e1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-virtual {v1, v2}, Lt6/f;->E(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/transsnet/downloader/ugc/widget/UGCForyouLoadMoreView;

    .line 33
    .line 34
    invoke-direct {v2}, Lcom/transsnet/downloader/ugc/widget/UGCForyouLoadMoreView;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lt6/f;->C(Ls6/a;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/t0;

    .line 45
    .line 46
    invoke-direct {v2, p0, v0}, Lcom/transsnet/downloader/ugc/fragment/t0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method protected final g1(IJ)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_5

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v0

    .line 14
    :goto_0
    if-lt p1, v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    instance-of v2, v1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 31
    .line 32
    if-eqz v2, :cond_5

    .line 33
    .line 34
    check-cast v1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p2, p3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/ugc/adapter/c$b;->a(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object p3, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 48
    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    if-eqz p3, :cond_3

    .line 56
    .line 57
    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 62
    .line 63
    :cond_3
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_5
    :goto_1
    return v0
.end method

.method public getEmptyView(Z)Landroid/view/View;
    .locals 7

    .line 1
    new-instance p1, Lcom/tn/lib/view/StateView;

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
    invoke-direct {p1, v0}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Lcom/transsnet/downloader/R$string;->download_no_historical_tips:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v6, "getString(...)"

    .line 26
    .line 27
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    const/4 v2, 0x6

    .line 32
    const/4 v3, 0x0

    .line 33
    const-string v4, ""

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/tn/lib/view/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget v1, Lcom/transsnet/downloader/R$string;->download_empty_find_free_source:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/p0;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/ugc/fragment/p0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    return-object p1
.end method

.method public final getPageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ugc_home"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "/download/ugc_download"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "/download/ugc_my_download"

    .line 15
    .line 16
    :goto_0
    return-object v0
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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->F0(Landroid/view/LayoutInflater;)Lbx/n0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected h1(ZLjava/util/List;Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->k:Z

    .line 7
    .line 8
    iget-object v3, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 9
    .line 10
    const-string v4, "ugc_home"

    .line 11
    .line 12
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v3, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    check-cast v3, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    :cond_2
    if-eqz p3, :cond_3

    .line 43
    .line 44
    new-instance v4, Lcom/transsnet/downloader/ugc/fragment/y0;

    .line 45
    .line 46
    invoke-direct {v4}, Lcom/transsnet/downloader/ugc/fragment/y0;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    move-object v4, v3

    .line 53
    check-cast v4, Ljava/lang/Iterable;

    .line 54
    .line 55
    instance-of v5, v4, Ljava/util/Collection;

    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    move-object v5, v4

    .line 61
    check-cast v5, Ljava/util/Collection;

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    :cond_4
    move v5, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 86
    .line 87
    instance-of v8, v7, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 88
    .line 89
    if-nez v8, :cond_7

    .line 90
    .line 91
    instance-of v7, v7, Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 92
    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    :cond_7
    move v5, v6

    .line 96
    :goto_0
    move-object/from16 v7, p2

    .line 97
    .line 98
    check-cast v7, Ljava/util/Collection;

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    if-eqz v7, :cond_16

    .line 102
    .line 103
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_8

    .line 108
    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :cond_8
    if-nez v5, :cond_a

    .line 112
    .line 113
    sget-object v4, Lcom/transsnet/downloader/ugc/adapter/c$f;->a:Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 114
    .line 115
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-object/from16 v4, p2

    .line 119
    .line 120
    check-cast v4, Ljava/lang/Iterable;

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_9

    .line 131
    .line 132
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 137
    .line 138
    new-instance v7, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 139
    .line 140
    invoke-direct {v7, v5}, Lcom/transsnet/downloader/ugc/adapter/c$e;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_9
    iget-object v4, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->g:Ljava/util/Set;

    .line 148
    .line 149
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_6

    .line 153
    .line 154
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    :cond_b
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_c

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    instance-of v9, v7, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 174
    .line 175
    if-eqz v9, :cond_b

    .line 176
    .line 177
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    :cond_d
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_e

    .line 195
    .line 196
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 201
    .line 202
    invoke-virtual {v7}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v7}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    if-eqz v7, :cond_d

    .line 211
    .line 212
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_e
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    move-object/from16 v5, p2

    .line 221
    .line 222
    check-cast v5, Ljava/lang/Iterable;

    .line 223
    .line 224
    new-instance v7, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    :cond_f
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-eqz v9, :cond_10

    .line 238
    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    move-object v10, v9

    .line 244
    check-cast v10, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 245
    .line 246
    invoke-virtual {v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    if-eqz v10, :cond_f

    .line 251
    .line 252
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-nez v10, :cond_f

    .line 257
    .line 258
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_11

    .line 267
    .line 268
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 269
    .line 270
    iget-object v10, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 271
    .line 272
    const/4 v13, 0x4

    .line 273
    const/4 v14, 0x0

    .line 274
    const-string v11, "updateForYouList: \u6240\u6709\u89c6\u9891\u90fd\u5df2\u5b58\u5728\uff0c\u8df3\u8fc7\u6dfb\u52a0"

    .line 275
    .line 276
    const/4 v12, 0x0

    .line 277
    invoke-static/range {v9 .. v14}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_11
    sget-object v15, Lwf/a;->a:Lwf/a$a;

    .line 282
    .line 283
    iget-object v4, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 284
    .line 285
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    new-instance v10, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v11, "updateForYouList: \u8fc7\u6ee4\u540e\u65b0\u589e "

    .line 299
    .line 300
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v5, " \u4e2a\u89c6\u9891\uff08\u539f\u59cb "

    .line 307
    .line 308
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v5, " \u4e2a\uff09"

    .line 315
    .line 316
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v17

    .line 323
    const/16 v19, 0x4

    .line 324
    .line 325
    const/16 v20, 0x0

    .line 326
    .line 327
    const/16 v18, 0x0

    .line 328
    .line 329
    move-object/from16 v16, v4

    .line 330
    .line 331
    invoke-static/range {v15 .. v20}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-eqz v5, :cond_12

    .line 343
    .line 344
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 349
    .line 350
    new-instance v7, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 351
    .line 352
    invoke-direct {v7, v5}, Lcom/transsnet/downloader/ugc/adapter/c$e;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 353
    .line 354
    .line 355
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_12
    :goto_6
    iget-object v4, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 360
    .line 361
    if-eqz v4, :cond_13

    .line 362
    .line 363
    check-cast v3, Ljava/util/Collection;

    .line 364
    .line 365
    invoke-virtual {v4, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 366
    .line 367
    .line 368
    :cond_13
    if-eqz v1, :cond_14

    .line 369
    .line 370
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 371
    .line 372
    if-eqz v1, :cond_15

    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    if-eqz v1, :cond_15

    .line 379
    .line 380
    invoke-virtual {v1}, Lt6/f;->s()V

    .line 381
    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_14
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 385
    .line 386
    if-eqz v1, :cond_15

    .line 387
    .line 388
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    if-eqz v1, :cond_15

    .line 393
    .line 394
    invoke-static {v1, v2, v6, v8}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_15
    :goto_7
    return-void

    .line 398
    :cond_16
    :goto_8
    sget-object v9, Lwf/a;->a:Lwf/a$a;

    .line 399
    .line 400
    iget-object v10, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->a:Ljava/lang/String;

    .line 401
    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    const-string v4, "foryou list is empty\uff0chasExistingForYou:"

    .line 408
    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v4, ", hasMore:"

    .line 416
    .line 417
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v11

    .line 427
    const/4 v13, 0x4

    .line 428
    const/4 v14, 0x0

    .line 429
    const/4 v12, 0x0

    .line 430
    invoke-static/range {v9 .. v14}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    if-eqz v1, :cond_17

    .line 434
    .line 435
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 436
    .line 437
    if-eqz v1, :cond_18

    .line 438
    .line 439
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    if-eqz v1, :cond_18

    .line 444
    .line 445
    invoke-virtual {v1}, Lt6/f;->v()V

    .line 446
    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_17
    iget-object v1, v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->b:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    .line 450
    .line 451
    if-eqz v1, :cond_18

    .line 452
    .line 453
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    if-eqz v1, :cond_18

    .line 458
    .line 459
    invoke-static {v1, v2, v6, v8}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    :cond_18
    :goto_9
    return-void
.end method

.method public initListener()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewData()V
    .locals 3

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
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "page_tab_name"

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->E0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->K0()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->J0()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "ugc_home"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->e1()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->initExposureHelper()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ugc_home"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->B0()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->h()Landroidx/lifecycle/b0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/q0;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/q0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$d;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 30
    .line 31
    .line 32
    :cond_0
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
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getPageName()Ljava/lang/String;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->h:J

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p1, p1, Lcom/transsnet/downloader/ugc/activity/UGCMyDownloadsActivity;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string p1, "ugc_sub"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p1, "ugc_home"

    .line 22
    .line 23
    :goto_0
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->i:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->f:Lbj/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lbj/b;->f()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->f:Lbj/b;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->g:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 17
    .line 18
    .line 19
    return-void
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
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->f:Lbj/b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lbj/b;->f()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    const/16 v5, 0x9

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v2, p0

    .line 32
    move v3, p1

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final u0()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->h:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->h:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const-string v3, "load_duration"

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method protected v0()Landroidx/recyclerview/widget/DiffUtil$e;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected w0()Landroidx/recyclerview/widget/RecyclerView$l;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->c:Lkotlin/Lazy;

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
