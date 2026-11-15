.class public Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;-><init>()V

    sput-object v0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->c:Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    return-void
.end method

.method public static d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;
    .locals 1

    sget-object v0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->c:Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ott_play_collect_online"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)V
    .locals 5

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->setLogin(Z)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->e(Z)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    if-eqz v0, :cond_3

    const-string v1, "ott_play_collect_online"

    goto :goto_3

    :cond_3
    const-string v1, "ott_play_collect_local"

    :goto_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    :goto_4
    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ott_play_collect_online"

    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public e(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    if-eqz p1, :cond_2

    const-string v2, "ott_play_collect_online"

    goto :goto_1

    :cond_2
    const-string v2, "ott_play_collect_local"

    :goto_1
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    new-instance v2, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$1;

    invoke-direct {v2, p0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$1;-><init>(Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_3
    if-eqz p1, :cond_4

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    goto :goto_2

    :cond_4
    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    :goto_2
    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->e(Z)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getCollectList(I)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$b;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$b;-><init>(Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public h()V
    .locals 5

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->e(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->collect([Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$a;

    invoke-direct {v1, p0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$a;-><init>(Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->g()V

    :goto_1
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->e(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    if-eqz v0, :cond_1

    const-string v1, "ott_play_collect_online"

    goto :goto_1

    :cond_1
    const-string v1, "ott_play_collect_local"

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    :goto_2
    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public j([Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->e(Z)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    :goto_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    if-eqz v0, :cond_2

    const-string v0, "ott_play_collect_online"

    goto :goto_2

    :cond_2
    const-string v0, "ott_play_collect_local"

    :goto_2
    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
