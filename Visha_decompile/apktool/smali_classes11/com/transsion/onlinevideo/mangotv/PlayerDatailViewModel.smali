.class public Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/MutableLiveData;

.field public b:Landroidx/lifecycle/MutableLiveData;

.field public c:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public b()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public c(Ljava/lang/String;II)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getShortVideoSketch(Ljava/lang/String;II)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$b;

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$b;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;)V

    invoke-virtual {p1, p2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public d()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getVideoInfo(Ljava/lang/String;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel$a;-><init>(Lcom/transsion/onlinevideo/mangotv/PlayerDatailViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method
