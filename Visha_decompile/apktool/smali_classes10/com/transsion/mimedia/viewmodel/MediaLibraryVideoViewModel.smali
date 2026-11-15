.class public final Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 *2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\"\u0010\u001c\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u000cR\u001a\u0010\u001e\u001a\u00020\t8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0018\u001a\u0004\u0008\u001d\u0010\u001aR\u001d\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001f\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010!\u001a\u0004\u0008 \u0010#R\u001f\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010!\u001a\u0004\u0008(\u0010#R\u001d\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010!\u001a\u0004\u0008*\u0010#R\u001d\u0010.\u001a\u0008\u0012\u0004\u0012\u00020,0\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010!\u001a\u0004\u0008-\u0010#\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lzfb;",
        "l",
        "()V",
        "",
        "page",
        "m",
        "(I)V",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;",
        "mediaLibrary",
        "a",
        "(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V",
        "",
        "mediaLibraryId",
        "b",
        "(Ljava/lang/String;)V",
        "pageNo",
        "j",
        "(Ljava/lang/String;I)V",
        "I",
        "f",
        "()I",
        "setMCurrentPage",
        "mCurrentPage",
        "i",
        "mPageSize",
        "Landroidx/lifecycle/MutableLiveData;",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "d",
        "()Landroidx/lifecycle/MutableLiveData;",
        "mAllMediaLibraryList",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectAdd;",
        "mAddCollectResult",
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectCancel;",
        "e",
        "mCancleCollectResult",
        "h",
        "mLoadStatus",
        "",
        "g",
        "mIsLimitMaxed",
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
.field public static final h:Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$a;


# instance fields
.field public a:I

.field public final b:I

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public final d:Landroidx/lifecycle/MutableLiveData;

.field public final e:Landroidx/lifecycle/MutableLiveData;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->h:Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->a:I

    const/16 p1, 0x9

    iput p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->b:I

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic k(Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget p2, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->a:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->j(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V
    .locals 4

    const-string v0, "mediaLibrary"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    new-instance v1, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getMediaLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;->getVirtualPersonPhoto()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getMICollectAdd(Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$b;

    invoke-direct {v0, p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$b;-><init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mediaLibraryId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    new-instance v1, Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;

    invoke-direct {v1, p1}, Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getMICollectCancel(Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;

    invoke-direct {v0, p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$c;-><init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final c()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final d()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final e()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->a:I

    return p0
.end method

.method public final g()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final h()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->b:I

    return p0
.end method

.method public final j(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "mediaLibraryId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    iget v1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->b:I

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getMIVideoDataList(Ljava/lang/String;II)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$d;

    invoke-direct {p2, p0}, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel$d;-><init>(Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;)V

    invoke-virtual {p1, p2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final l()V
    .locals 1

    iget v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->a:I

    return-void
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/mimedia/viewmodel/MediaLibraryVideoViewModel;->a:I

    return-void
.end method
