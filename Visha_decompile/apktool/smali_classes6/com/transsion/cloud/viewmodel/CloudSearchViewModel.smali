.class public final Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0013\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0008J\u0017\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ5\u0010\"\u001a\u00020\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0008\u0002\u0010 \u001a\u00020\t2\u0008\u0008\u0002\u0010!\u001a\u00020\t\u00a2\u0006\u0004\u0008\"\u0010#J \u0010%\u001a\u00020\u00062\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000eH\u0086@\u00a2\u0006\u0004\u0008%\u0010&R\u0014\u0010*\u001a\u00020\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R#\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0/8\u0006\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0014\u00107\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u001a\u0010;\u001a\u0008\u0012\u0004\u0012\u00020\u000f088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R#\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u000e0/8\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u00101\u001a\u0004\u0008=\u00103R\u0016\u0010@\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u00106R\u001a\u0010C\u001a\u00020\t8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0015\u00106\u001a\u0004\u0008A\u0010BR3\u0010F\u001a\u001e\u0012\u001a\u0012\u0018\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000e\u0012\u0004\u0012\u00020\t\u0018\u00010D0/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u00101\u001a\u0004\u0008E\u00103R\u001d\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u001e0/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u00101\u001a\u0004\u0008G\u00103R$\u0010M\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010\u0019R\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020O\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0018\u0010U\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010TR\u001d\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u000f0V8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010W\u001a\u0004\u0008P\u0010XR\u0016\u0010[\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010Z\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lzfb;",
        "u",
        "()V",
        "",
        "page",
        "w",
        "(I)V",
        "t",
        "",
        "",
        "j",
        "()Ljava/util/List;",
        "newHistory",
        "x",
        "(Ljava/lang/String;)V",
        "h",
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "videoCloudData",
        "i",
        "(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V",
        "nameFileName",
        "v",
        "(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/lang/String;)V",
        "searchName",
        "",
        "mediaLibraryFlag",
        "pageNo",
        "pageSize",
        "r",
        "(Ljava/lang/String;Ljava/lang/Boolean;II)V",
        "videoList",
        "z",
        "(Ljava/util/List;Lwh1;)Ljava/lang/Object;",
        "Lhk1;",
        "a",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lnk1;",
        "b",
        "Lnk1;",
        "mCoroutineScope",
        "Landroidx/lifecycle/MutableLiveData;",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "o",
        "()Landroidx/lifecycle/MutableLiveData;",
        "mSearchHistory",
        "d",
        "I",
        "mMaxCount",
        "",
        "e",
        "Ljava/util/List;",
        "mHistoryCache",
        "f",
        "k",
        "mCloudDataListClear",
        "g",
        "mCurrentPage",
        "m",
        "()I",
        "mPageSize",
        "Lkotlin/Pair;",
        "n",
        "mSearchCloudDataList",
        "p",
        "mSearchLoadingLiveData",
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "q",
        "()Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "y",
        "mSelectedItemData",
        "Lxy0;",
        "Lcom/transsion/cloud_drive/base/api/model/FileInfo;",
        "l",
        "Lxy0;",
        "mCloudManager",
        "Lapb;",
        "Lapb;",
        "mVideoCloudData",
        "",
        "Ljava/util/Set;",
        "()Ljava/util/Set;",
        "mExposedItems",
        "Z",
        "mRetryRefreshToken",
        "clouddrive_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lhk1;

.field public final b:Lnk1;

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public final d:I

.field public final e:Ljava/util/List;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public g:I

.field public final h:I

.field public final i:Landroidx/lifecycle/MutableLiveData;

.field public final j:Landroidx/lifecycle/MutableLiveData;

.field public k:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

.field public l:Lxy0;

.field public m:Lapb;

.field public final n:Ljava/util/Set;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    const-string v0, "application"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$a;

    invoke-direct {v1, v0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$a;-><init>(Lhk1$b;)V

    iput-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->a:Lhk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b:Lnk1;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    const/16 v0, 0xa

    iput v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->d:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->e:Ljava/util/List;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    iput v3, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->g:I

    iput v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->h:I

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->n:Ljava/util/Set;

    :try_start_0
    sget-object v0, La41;->a:La41;

    invoke-virtual {v0, p1}, La41;->c(Landroid/content/Context;)Lxy0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->l:Lxy0;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->videoCloudCacheDao()Lapb;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->m:Lapb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Lxy0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->l:Lxy0;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Lnk1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b:Lnk1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->d:I

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->o:Z

    return p0
.end method

.method public static final synthetic f(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;)Lapb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->m:Lapb;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->o:Z

    return-void
.end method

.method public static synthetic s(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Ljava/lang/String;Ljava/lang/Boolean;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    iget p3, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->g:I

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    iget p4, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->h:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->r(Ljava/lang/String;Ljava/lang/Boolean;II)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$clearHistory$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$clearHistory$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final i(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V
    .locals 6

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$deleteFile$1;-><init>(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->e:Ljava/util/List;

    return-object p0
.end method

.method public final k()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final l()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->n:Ljava/util/Set;

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->h:I

    return p0
.end method

.method public final n()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final o()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final p()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final q()Lcom/transsion/dbdata/beans/cloud/SearchResponseData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->k:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    return-object p0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/Boolean;II)V
    .locals 8

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getSearchData(Ljava/lang/String;Ljava/lang/Boolean;II)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v7, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchData$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;ILjava/lang/String;Ljava/lang/Boolean;I)V

    invoke-virtual {v0, v7}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final t()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchHistory$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$getSearchHistory$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final u()V
    .locals 1

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->g:I

    return-void
.end method

.method public final v(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/transsion/netdisk/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$renameFile$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$renameFile$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/lang/String;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->g:I

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 7

    const-string v0, "newHistory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v4, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$setHistoryList$1;-><init>(Ljava/lang/String;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final y(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;->k:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    return-void
.end method

.method public final z(Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/transsion/cloud/viewmodel/CloudSearchViewModel$updateVideoCovers$2;-><init>(Ljava/util/List;Lcom/transsion/cloud/viewmodel/CloudSearchViewModel;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
