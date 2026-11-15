.class public Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;",
        ">",
        "Landroidx/lifecycle/ViewModel;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/MutableLiveData;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->b:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;J)V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean$Mango;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean$Mango;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean$Mango;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean$Mango;

    move-result-object p2

    new-instance p3, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;

    invoke-direct {p3, p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;-><init>(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)V

    const-string p0, "https://ounion.bz.mgtv.com/media/videoRelated"

    const-class v0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;

    invoke-static {p1, p0, p2, v0, p3}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->postRecommendContent(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)V

    return-void
.end method

.method public final c(JI)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getRecommend(JI)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$b;

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$b;-><init>(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)V

    invoke-virtual {p1, p2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    const/16 v1, 0xf

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getVkRecommend(Ljava/lang/String;IILjava/lang/String;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$d;

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$d;-><init>(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)V

    invoke-virtual {p1, p2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getYoutubeRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$c;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$c;-><init>(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public f(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public g(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;JLjava/lang/String;)V
    .locals 1

    invoke-static {p4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isMgTVVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->b(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;J)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->isSmashiVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->c(JI)V

    goto :goto_0

    :cond_1
    const-string p0, "unknown video source type,so no recommend"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_RecommendViewModel"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
