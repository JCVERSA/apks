.class public final Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 02\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\r\u0010\u0014\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0014\u0010\rR\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010 R\"\u0010\'\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\u0011R\u001a\u0010*\u001a\u00020\u000e8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010%R#\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060+8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010,\u001a\u0004\u0008(\u0010-R\u001d\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u000e0+8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010,\u001a\u0004\u0008\"\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "list",
        "Lzfb;",
        "j",
        "(Ljava/util/List;)V",
        "k",
        "()V",
        "",
        "page",
        "l",
        "(I)V",
        "pageNo",
        "g",
        "i",
        "Lhk1;",
        "a",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lnk1;",
        "b",
        "Lnk1;",
        "c",
        "()Lnk1;",
        "mCoroutineScope",
        "Lhw5;",
        "Lhw5;",
        "mFavoriteDao",
        "d",
        "I",
        "getMCurrentPage",
        "()I",
        "setMCurrentPage",
        "mCurrentPage",
        "e",
        "f",
        "mPageSize",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "()Landroidx/lifecycle/MutableLiveData;",
        "mMediaLibraryList",
        "mLoadStatus",
        "h",
        "mimedia_release"
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
.field public static final h:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$a;


# instance fields
.field public final a:Lhk1;

.field public final b:Lnk1;

.field public c:Lhw5;

.field public d:I

.field public final e:I

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->h:Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    sget-object p1, Lhk1;->w1:Lhk1$b;

    new-instance v0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$c;

    invoke-direct {v0, p1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$c;-><init>(Lhk1$b;)V

    iput-object v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->a:Lhk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->b:Lnk1;

    iput v2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d:I

    const/4 p1, 0x6

    iput p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->e:I

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    :try_start_0
    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->miMediaLibraryCacheDao()Lhw5;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->c:Lhw5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;)Lhw5;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->c:Lhw5;

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->j(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->g(I)V

    return-void
.end method

.method private final j(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$insertFavoriteToCache$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$insertFavoriteToCache$1;-><init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;Ljava/util/List;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public final c()Lnk1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->b:Lnk1;

    return-object p0
.end method

.method public final d()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final e()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->e:I

    return p0
.end method

.method public final g(I)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    iget v1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->e:I

    invoke-interface {v0, p1, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getUserCollectDataList(II)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$b;-><init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;I)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final i()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->b:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$getMediaLibraryFromCache$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel$getMediaLibraryFromCache$1;-><init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final k()V
    .locals 1

    iget v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryListViewModel;->d:I

    return-void
.end method
