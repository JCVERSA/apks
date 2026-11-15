.class public Lcom/transsion/onlinevideo/promotion/PromotionModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/MutableLiveData;


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

    iput-object p1, p0, Lcom/transsion/onlinevideo/promotion/PromotionModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/transsion/onlinevideo/promotion/PromotionManager;->c()Lcom/transsion/onlinevideo/promotion/PromotionManager;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/onlinevideo/promotion/PromotionManager;->b:Z

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getPromotions(J)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/promotion/PromotionModel$1;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/promotion/PromotionModel$1;-><init>(Lcom/transsion/onlinevideo/promotion/PromotionModel;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public getLoadStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/promotion/PromotionModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method
