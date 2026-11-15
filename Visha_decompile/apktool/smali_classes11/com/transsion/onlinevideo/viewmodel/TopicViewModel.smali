.class public Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/List;


# instance fields
.field public final a:Landroidx/lifecycle/MutableLiveData;

.field public final b:Landroidx/lifecycle/MutableLiveData;

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public d:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public d(JIIZ)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getMediasByTopic(JII)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$a;

    invoke-direct {p2, p0, p5, p4, p3}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$a;-><init>(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;ZII)V

    invoke-virtual {p1, p2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public e([Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;IIZ)V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;-><init>([Lcom/transsion/dbdata/beans/onlinevideo/VideoTag;II)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object p1

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {p1, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getVideoByTag(Lcom/transsion/dbdata/beans/onlinevideo/GetVideoByTag;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;

    invoke-direct {v0, p0, p4, p3, p2}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$b;-><init>(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;ZII)V

    invoke-virtual {p1, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public f()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public g()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getLoadStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->d:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->d:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;->d:Ljava/util/Locale;

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getVideoTag()Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$c;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/viewmodel/TopicViewModel$c;-><init>(Lcom/transsion/onlinevideo/viewmodel/TopicViewModel;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method
