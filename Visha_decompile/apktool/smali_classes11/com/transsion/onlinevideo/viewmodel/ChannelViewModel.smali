.class public Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# static fields
.field public static j:J

.field public static k:J


# instance fields
.field public a:Ljava/util/Map;

.field public b:Landroidx/lifecycle/LiveData;

.field public c:Landroidx/lifecycle/LiveData;

.field public d:Landroidx/lifecycle/MutableLiveData;

.field public e:Ljava/util/Map;

.field public f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Lzf7;

.field public final h:Lsg7;

.field public final i:Lcom/transsion/dbdata/database/OnlineVideoDatabase;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->i:Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->b()Lzf7;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->h:Lsg7;

    invoke-interface {v0}, Lzf7;->getAllLiveHistoryBean()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->b:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static synthetic K(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic N(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic S(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic T(Ljava/util/List;ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->O(ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->S(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->K(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->Q(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->U(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->R(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIIILjava/util/List;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->P(IIIILjava/util/List;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Ljava/util/List;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->J(Ljava/util/List;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/util/List;ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->T(Ljava/util/List;ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->M(ZJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->I(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->N(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZIJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->L(ZIJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIILjava/util/List;Ljava/util/List;I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->t(IIILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIILjava/util/List;Ljava/util/List;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V
    .locals 0

    invoke-virtual/range {p0 .. p13}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->u(IIILjava/util/List;Ljava/util/List;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic p()J
    .locals 2

    sget-wide v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->j:J

    return-wide v0
.end method

.method public static bridge synthetic q()J
    .locals 2

    sget-wide v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->k:J

    return-wide v0
.end method

.method public static v(Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->k:J

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBiz_group_id()I

    move-result v8

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v8}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getAlgorithmRecommend(JJILjava/lang/String;I)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;

    move-object v2, p0

    move-object v3, p1

    invoke-direct {v1, p1, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$c;-><init>(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Lcom/transsion/onlinevideo/widgets/topic/VideoViewHolder;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    invoke-static {p2, p3, p4, p5}, Lwz5;->U(JJ)V

    return-void
.end method


# virtual methods
.method public A()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->b:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public B(I)Landroidx/lifecycle/MutableLiveData;
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public C(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    return-void
.end method

.method public D(I)Landroidx/lifecycle/MutableLiveData;
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public E(Landroid/content/Context;IIII)V
    .locals 7

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Liu0;

    invoke-direct {v0, p0, p2}, Liu0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;I)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v6, Lju0;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lju0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIII)V

    invoke-virtual {p1, v6}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public F(IIIILjava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-static {}, Lc06;->t()V

    invoke-static {p5, p2}, Lc06;->q(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object p5

    const-class v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {p5, v0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    int-to-long v1, p1

    int-to-long v3, p2

    const-wide/16 v5, 0x2

    move v7, p3

    move v8, p4

    invoke-interface/range {v0 .. v8}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getTopicByChannel(JJJII)Lmc7;

    move-result-object p1

    new-instance p5, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;

    invoke-direct {p5}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;-><init>()V

    invoke-virtual {p1, p5}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    new-instance p5, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {p5}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {p1, p5}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p1, p5}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p5

    invoke-virtual {p1, p5}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p5, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$a;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;III)V

    invoke-virtual {p1, p5}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public G()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->c:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->i:Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    invoke-interface {v0}, Lsg7;->getAllLiveHistoryUserBeanNotDelete()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->c:Landroidx/lifecycle/LiveData;

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->c:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public H(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getmIsYoutube()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object p0

    filled-new-array {p0}, [Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object p0

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/history/HistoryManager;->o([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgu0;

    invoke-direct {v0, p0, p2, p1}, Lgu0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Landroid/content/Context;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final synthetic I(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p0}, Lzf7;->deleteAll()I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic J(Ljava/util/List;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p0, p1}, Lzf7;->deleteHistories(Ljava/util/List;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic L(ZIJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    if-ne p2, p5, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->h:Lsg7;

    invoke-interface {p0, p3, p4}, Lsg7;->getHistoryUserBean(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->h:Lsg7;

    invoke-interface {p0, p3, p4}, Lsg7;->getHistoryUserBeanByVideoId(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ne p2, p5, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p0, p3, p4}, Lzf7;->getHistoryBean(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p0, p3, p4}, Lzf7;->getAllHistoryByVideoIdIntact(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic M(ZJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 1

    const-string p4, "getHistoryUserBeanBySourceId: "

    const-string v0, "visha_ChannelViewModel"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->h:Lsg7;

    invoke-interface {p0, p2, p3}, Lsg7;->getHistoryUserBeanByVideoId(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p0, p2, p3}, Lzf7;->getAllHistoryByVideoId(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic O(ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$1;

    invoke-direct {p2, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$1;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p1, p0}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final synthetic P(IIIILjava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p5, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p5, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    const-string v6, "cold"

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->F(IIIILjava/lang/String;)V

    return-void
.end method

.method public final synthetic Q(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Landroid/content/Context;)V
    .locals 4

    const-string v0, "visha_ChannelViewModel"

    :try_start_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {v1, p1}, Lzf7;->insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->h:Lsg7;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object p1

    invoke-interface {v3, p1}, Lsg7;->insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)J

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->V(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "insertHistory success id:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insertHistory failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final synthetic R(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 2

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p1}, Lzf7;->getAllHistoryBean()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p0, p1}, Lzf7;->deleteHistories(Ljava/util/List;)I

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic U(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoIsTact()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->videoId:J

    invoke-interface {p2, v0, v1}, Lzf7;->getAllHistoryByVideoIdIntact(J)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {v0, p2}, Lzf7;->deleteHistories(Ljava/util/List;)I

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iget-wide v2, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gtz p2, :cond_1

    cmp-long p2, v0, v4

    if-lez p2, :cond_1

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->duration:J

    :cond_1
    iget-object p2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g:Lzf7;

    invoke-interface {p2, p1}, Lzf7;->insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->h:Lsg7;

    invoke-static {p1}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object p1

    invoke-interface {p0, p1}, Lsg7;->insertHistory(Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateHistory, id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "visha_ChannelViewModel"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public V(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lpu0;

    invoke-direct {v0, p0}, Lpu0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lqu0;

    invoke-direct {p1}, Lqu0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public W(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public X(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public Y(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public Z(ILjava/util/List;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    new-instance v0, Lru0;

    invoke-direct {v0, p2, p1}, Lru0;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public a0(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getmIsYoutube()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object p0

    filled-new-array {p0}, [Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object p0

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/history/HistoryManager;->o([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lku0;

    invoke-direct {v1, p0, p2}, Lku0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;

    invoke-direct {v0, p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    :goto_0
    return-void
.end method

.method public r(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lhu0;

    invoke-direct {v0, p0}, Lhu0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public s(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lsu0;

    invoke-direct {v0, p0, p2}, Lsu0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public final t(IIILjava/util/List;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-interface {p5}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p2, p4}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->Z(ILjava/util/List;)V

    :cond_0
    invoke-interface {p5, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    int-to-float p4, p6

    int-to-float p3, p3

    div-float/2addr p4, p3

    float-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    if-lt p1, p3, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final u(IIILjava/util/List;Ljava/util/List;ILcom/transsion/dbdata/beans/onlinevideo/TopicBean;JJILjava/lang/String;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->j:J

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual/range {p7 .. p7}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBiz_group_id()I

    move-result v8

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move/from16 v6, p12

    move-object/from16 v7, p13

    invoke-interface/range {v1 .. v8}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getAlgorithmRecommend(JJILjava/lang/String;I)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v10, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$b;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;Ljava/util/List;IIILjava/util/List;I)V

    invoke-virtual {v0, v10}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public w(Landroid/content/Context;JIZ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHistoryBeans: vid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLogIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_ChannelViewModel"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v6, Llu0;

    move-object v0, v6

    move-object v1, p0

    move v2, p5

    move v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Llu0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZIJ)V

    invoke-virtual {p1, v6}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lmu0;

    invoke-direct {p1}, Lmu0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public x()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public y(Landroid/content/Context;JZ)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/transsion/playercommon/activities/BaseActivity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lnu0;

    invoke-direct {v0, p0, p4, p2, p3}, Lnu0;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZJ)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lou0;

    invoke-direct {p1}, Lou0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void

    :cond_1
    :goto_0
    const-string p0, "visha_ChannelViewModel"

    const-string p1, "getHistoryBeansByVideoId: skip, context is null or not BaseActivity"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    return-void
.end method

.method public z()V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getHistoryRecommend()Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$e;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$e;-><init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method
