.class public abstract Lcom/transsion/onlinevideo/history/HistoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/HistoryManager;->l(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/history/HistoryManager;->j()V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/HistoryManager;->i(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/transsion/onlinevideo/history/HistoryManager;->k()V

    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    invoke-interface {v0}, Lsg7;->getAllHistoryUserBean()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static f(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lzq4;

    invoke-direct {v0, p0}, Lzq4;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g()V
    .locals 1

    new-instance v0, Lxq4;

    invoke-direct {v0}, Lxq4;-><init>()V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h()V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->getPlayHistory()Ljq0;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/history/HistoryManager$c;

    invoke-direct {v1}, Lcom/transsion/onlinevideo/history/HistoryManager$c;-><init>()V

    invoke-interface {v0, v1}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/List;)V
    .locals 6

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-static {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->setIsDeleted()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->getmIsYoutube()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->b()Lzf7;

    move-result-object v2

    invoke-interface {v2, v1}, Lzf7;->deleteHistories(Ljava/util/List;)I

    :cond_3
    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v1

    invoke-interface {v1, v0}, Lsg7;->insertHistories(Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-wide v4, v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;->recordId:J

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object p0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {p0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {p0, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->deletePlayHistory([J)Ljq0;

    move-result-object p0

    new-instance v1, Lcom/transsion/onlinevideo/history/HistoryManager$4;

    invoke-direct {v1, v0}, Lcom/transsion/onlinevideo/history/HistoryManager$4;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljq0;->enqueue(Ltq0;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic j()V
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    invoke-interface {v0}, Lsg7;->deleteAll()I

    return-void
.end method

.method public static synthetic k()V
    .locals 3

    invoke-static {}, Lcom/transsion/onlinevideo/history/HistoryManager;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    invoke-interface {v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->uploadPlayHistory([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)Ljq0;

    move-result-object v1

    new-instance v2, Lcom/transsion/onlinevideo/history/HistoryManager$d;

    invoke-direct {v2, v0}, Lcom/transsion/onlinevideo/history/HistoryManager$d;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/List;)V
    .locals 7

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->c()Lsg7;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->a()Lcom/transsion/dbdata/database/OnlineVideoDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/OnlineVideoDatabase;->b()Lzf7;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-static {v4}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object v5

    const/4 v6, 0x1

    iput v6, v5, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->isUploaded:I

    invoke-static {v4}, Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;->valueOfUserBean(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lsg7;->insertHistories(Ljava/util/List;)V

    invoke-interface {v1, p0}, Lzf7;->deleteHistories(Ljava/util/List;)I

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v1, p0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->uploadPlayHistory(Ljava/util/List;)Ljq0;

    move-result-object p0

    new-instance v1, Lcom/transsion/onlinevideo/history/HistoryManager$b;

    invoke-direct {v1, v0}, Lcom/transsion/onlinevideo/history/HistoryManager$b;-><init>(Lsg7;)V

    invoke-interface {p0, v1}, Ljq0;->enqueue(Ltq0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static m()V
    .locals 1

    new-instance v0, Lyq4;

    invoke-direct {v0}, Lyq4;-><init>()V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lwq4;

    invoke-direct {v0, p0}, Lwq4;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static o([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadUserHistory: list count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "HistoryManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;

    invoke-interface {v0, p0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineApiService;->uploadPlayHistory([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;)Ljq0;

    move-result-object v0

    new-instance v1, Lcom/transsion/onlinevideo/history/HistoryManager$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/onlinevideo/history/HistoryManager$a;-><init>([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljq0;->enqueue(Ltq0;)V

    :cond_1
    :goto_0
    return-void
.end method
