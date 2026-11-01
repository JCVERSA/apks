.class public Lcom/snaptube/search/b;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ej3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/search/b$e;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/List;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo/bg5;

.field public c:Lo/ej3;

.field public d:Lo/wu7;

.field public e:Lo/pu8;

.field public final f:Z

.field public final g:Ljava/util/concurrent/Callable;

.field public h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/snaptube/search/b;->i:Ljava/util/List;

    const-string v1, "SearchIgnoreException"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SocketException"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "InterruptedIOException"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ConnectException"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SocketTimeoutException"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/bg5;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/snaptube/search/b$d;

    invoke-direct {v0, p0}, Lcom/snaptube/search/b$d;-><init>(Lcom/snaptube/search/b;)V

    iput-object v0, p0, Lcom/snaptube/search/b;->g:Ljava/util/concurrent/Callable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snaptube/search/b;->h:Ljava/util/Map;

    iput-object p1, p0, Lcom/snaptube/search/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/search/b;->b:Lo/bg5;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b0()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "search_plugin_debug"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/snaptube/search/b;->f:Z

    new-instance p2, Lo/pu8;

    invoke-direct {p2, p1}, Lo/pu8;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/snaptube/search/b;->e:Lo/pu8;

    invoke-virtual {p0}, Lcom/snaptube/search/b;->x()V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/base/utils/RxBus$d;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/snaptube/search/b;->q(Lcom/wandoujia/base/utils/RxBus$d;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/snaptube/search/b;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/search/b;->r(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/search/b;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/snaptube/search/b;Lcom/snaptube/search/SearchResult;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/search/b;->o(Lcom/snaptube/search/SearchResult;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/snaptube/search/b;)Lo/ej3;
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/search/b;->t()Lo/ej3;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/snaptube/search/b;)Lo/ej3;
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/search/b;->u()Lo/ej3;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/snaptube/search/b;Lo/ej3;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/search/b;->w(Lo/ej3;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/search/SearchResult;)I
    .locals 0

    invoke-static {p0}, Lcom/snaptube/search/b;->n(Lcom/snaptube/search/SearchResult;)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/Throwable;Z)Lcom/snaptube/premium/search/plugin/log/SearchException;
    .locals 1

    instance-of v0, p0, Lcom/snaptube/premium/search/plugin/log/SearchException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/snaptube/premium/search/plugin/log/SearchException;

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lo/e58;->b(Ljava/lang/Throwable;Z)Lcom/snaptube/premium/search/plugin/log/SearchException;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/snaptube/search/SearchResult;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/search/SearchResult;->getEntities()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/search/SearchResult;->getEntities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/search/SearchResult;->getEntities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/search/SearchResult$Entity;

    invoke-virtual {v1}, Lcom/snaptube/search/SearchResult$Entity;->isPlaylistInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/search/SearchResult;->getEntities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static p(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/search/plugin/log/TraceContext$a;

    invoke-virtual {v0}, Lcom/snaptube/premium/search/plugin/log/TraceContext$a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http_response"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snaptube/premium/search/plugin/log/TraceContext$a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic q(Lcom/wandoujia/base/utils/RxBus$d;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/wandoujia/base/utils/RxBus$d;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/snaptube/plugin/PluginId;->VIDEO_SEARCH_ENGINE:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v1}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/wandoujia/base/utils/RxBus$d;->b:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "RxjavaExecuteException"

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p0}, Lo/d58;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/snaptube/search/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_1
    instance-of v0, p0, Lcom/snaptube/premium/search/plugin/log/TraceSearchException;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/snaptube/premium/search/plugin/log/TraceSearchException;

    invoke-virtual {v0}, Lcom/snaptube/premium/search/plugin/log/TraceSearchException;->getTraceItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/search/b;->p(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "SearchVideoException"

    invoke-static {p0, v1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/search/SearchResult;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string v8, ""

    new-instance v9, Lcom/snaptube/search/b$e;

    invoke-direct {v9, v1, v2}, Lcom/snaptube/search/b$e;-><init>(Lcom/snaptube/search/b;Lo/ou8;)V

    invoke-virtual {v9}, Lcom/snaptube/search/b$e;->b()V

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    invoke-virtual {v1, v3, v4}, Lcom/snaptube/search/b;->k(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/search/b;->l()Lo/ej3;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v5

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    :try_start_1
    invoke-interface/range {v10 .. v17}, Lo/ej3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/search/SearchResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v9

    move-object/from16 v4, p2

    move-object v7, v0

    move-object/from16 v9, p7

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/snaptube/search/b$e;->a(Ljava/lang/String;Lo/ej3;ILcom/snaptube/search/SearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    :try_start_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Lcom/snaptube/search/b;->j(Ljava/lang/Throwable;Z)Lcom/snaptube/premium/search/plugin/log/SearchException;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/search/b;->v(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/e58;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/snaptube/premium/search/plugin/log/SearchException;->setLoadMore(Z)V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/oz6;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v1, Lcom/snaptube/search/b;->e:Lo/pu8;

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/search/b;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move-object v14, v0

    move-object v15, v8

    invoke-virtual/range {v10 .. v15}, Lo/pu8;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/search/plugin/log/SearchException;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object v14, v8

    const/4 v13, 0x0

    move-object/from16 v10, p2

    move-object v11, v2

    move v12, v6

    move-object/from16 v15, p7

    move-object/from16 v16, p6

    invoke-virtual/range {v9 .. v16}, Lcom/snaptube/search/b$e;->a(Ljava/lang/String;Lo/ej3;ILcom/snaptube/search/SearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/search/b;->c:Lo/ej3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/ej3;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/search/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/snaptube/search/b;->h:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final declared-synchronized l()Lo/ej3;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/search/b;->c:Lo/ej3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/snaptube/search/b;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/snaptube/search/b;->c:Lo/ej3;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/search/b;->u()Lo/ej3;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/search/b;->c:Lo/ej3;

    :cond_1
    iget-object v0, p0, Lcom/snaptube/search/b;->c:Lo/ej3;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public listChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/search/SearchResult;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ":"

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    const-string v11, ""

    new-instance v12, Lcom/snaptube/search/b$e;

    invoke-direct {v12, v1, v5}, Lcom/snaptube/search/b$e;-><init>(Lcom/snaptube/search/b;Lo/ou8;)V

    invoke-virtual {v12}, Lcom/snaptube/search/b$e;->b()V

    const-string v6, "listChannel"

    invoke-virtual {v1, v6, v3}, Lcom/snaptube/search/b;->k(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/search/b;->l()Lo/ej3;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v8, v2, v3}, Lo/ej3;->listChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/search/SearchResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v13, 0x0

    move-object v6, v12

    move v9, v15

    move-object v10, v0

    move-object v12, v2

    invoke-virtual/range {v6 .. v13}, Lcom/snaptube/search/b$e;->a(Ljava/lang/String;Lo/ej3;ILcom/snaptube/search/SearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v14, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v14, v5

    :goto_0
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Lcom/snaptube/search/b;->j(Ljava/lang/Throwable;Z)Lcom/snaptube/premium/search/plugin/log/SearchException;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/search/b;->v(Ljava/lang/Throwable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", nextOffset: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v3, v1, Lcom/snaptube/search/b;->e:Lo/pu8;

    const-string v17, "fake.query"

    const-string v18, "channels"

    const-string v19, "fake.listTitle"

    invoke-virtual {v0}, Lcom/snaptube/premium/search/plugin/log/SearchException;->getError()Lcom/snaptube/premium/search/plugin/log/SearchError;

    move-result-object v21

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/search/b;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v0}, Lcom/snaptube/premium/search/plugin/log/SearchException;->getErrorJson()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v16, v3

    move-object/from16 v26, v0

    invoke-virtual/range {v16 .. v26}, Lo/pu8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/search/plugin/log/SearchError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/search/plugin/log/SearchException;)V

    invoke-static {v0}, Lo/e58;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/oz6;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v17, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/snaptube/search/b$e;->a(Ljava/lang/String;Lo/ej3;ILcom/snaptube/search/SearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public listPlaylist(Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/search/SearchResult;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ":"

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/q55;->B(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    const-string v11, ""

    new-instance v12, Lcom/snaptube/search/b$e;

    invoke-direct {v12, v1, v5}, Lcom/snaptube/search/b$e;-><init>(Lcom/snaptube/search/b;Lo/ou8;)V

    invoke-virtual {v12}, Lcom/snaptube/search/b$e;->b()V

    const-string v6, "listPlaylist"

    invoke-virtual {v1, v6, v3}, Lcom/snaptube/search/b;->k(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/search/b;->l()Lo/ej3;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v8, v2, v3}, Lo/ej3;->listPlaylist(Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/search/SearchResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v13, 0x0

    move-object v6, v12

    move v9, v15

    move-object v10, v0

    move-object v12, v2

    invoke-virtual/range {v6 .. v13}, Lcom/snaptube/search/b$e;->a(Ljava/lang/String;Lo/ej3;ILcom/snaptube/search/SearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v14, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v14, v5

    :goto_0
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Lcom/snaptube/search/b;->j(Ljava/lang/Throwable;Z)Lcom/snaptube/premium/search/plugin/log/SearchException;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/search/b;->v(Ljava/lang/Throwable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", nextOffset: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v3, v1, Lcom/snaptube/search/b;->e:Lo/pu8;

    const-string v17, "fake.query"

    const-string v18, "playlists"

    const-string v19, "fake.listTitle"

    invoke-virtual {v0}, Lcom/snaptube/premium/search/plugin/log/SearchException;->getError()Lcom/snaptube/premium/search/plugin/log/SearchError;

    move-result-object v21

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/snaptube/search/b;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v0}, Lcom/snaptube/premium/search/plugin/log/SearchException;->getErrorJson()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v16, v3

    move-object/from16 v26, v0

    invoke-virtual/range {v16 .. v26}, Lo/pu8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/search/plugin/log/SearchError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/search/plugin/log/SearchException;)V

    invoke-static {v0}, Lo/e58;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/oz6;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v17, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/snaptube/search/b$e;->a(Ljava/lang/String;Lo/ej3;ILcom/snaptube/search/SearchResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Ljava/io/File;
    .locals 3

    sget-object v0, Lcom/snaptube/plugin/PluginId;->VIDEO_SEARCH_ENGINE:Lcom/snaptube/plugin/PluginId;

    invoke-static {v0}, Lo/c16;->o(Lcom/snaptube/plugin/PluginId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/c16;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lcom/snaptube/search/SearchResult;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/snaptube/search/SearchResult;->isResultEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/search/SearchResult;->getEntities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/search/SearchResult$Entity;

    invoke-virtual {v1}, Lcom/snaptube/search/SearchResult$Entity;->isPlaylist()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/snaptube/search/SearchResult$Entity;->isMix()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final synthetic r(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    iget-object p1, p0, Lcom/snaptube/search/b;->c:Lo/ej3;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/snaptube/search/b;->z(Z)V

    :cond_0
    return-void
.end method

.method public final t()Lo/ej3;
    .locals 6

    invoke-virtual {p0}, Lcom/snaptube/search/b;->m()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "dex"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v2, v3, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to load apkFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "test"

    invoke-static {v3, v2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lo/vf9;

    invoke-direct {v2}, Lo/vf9;-><init>()V

    iget-object v4, p0, Lcom/snaptube/search/b;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v1}, Lo/vf9;->a(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load plugin finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/kz5;->a(Ljava/lang/ClassLoader;)V

    const-string v0, "search"

    const-string v1, "start using client engine in plugin"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/search/b;->b:Lo/bg5;

    invoke-static {v0, v2}, Lo/tf9;->b(Lo/bg5;Lcom/snaptube/search/engine/IVideoSearchEngine;)Lo/ej3;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Lo/ej3;
    .locals 3

    const-string v0, "search"

    const-string v1, "start using builtin client engine"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/search/b;->b:Lo/bg5;

    new-instance v1, Lo/xe9;

    iget-object v2, p0, Lcom/snaptube/search/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lo/xe9;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lo/tf9;->b(Lo/bg5;Lcom/snaptube/search/engine/IVideoSearchEngine;)Lo/ej3;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized w(Lo/ej3;Ljava/lang/Throwable;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/snaptube/search/b;->c:Lo/ej3;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/snaptube/search/b;->d:Lo/wu7;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final x()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x455

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/lu8;

    invoke-direct {v1}, Lo/lu8;-><init>()V

    invoke-virtual {v0, v1}, Lrx/c;->E(Lo/xw2;)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->g:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/mu8;

    invoke-direct {v1, p0}, Lo/mu8;-><init>(Lcom/snaptube/search/b;)V

    new-instance v2, Lo/nu8;

    invoke-direct {v2}, Lo/nu8;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method

.method public declared-synchronized y()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/snaptube/search/b;->z(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized z(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/search/b;->c:Lo/ej3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/snaptube/search/b;->d:Lo/wu7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/snaptube/search/b;->g:Ljava/util/concurrent/Callable;

    invoke-static {p1}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/search/b$c;

    invoke-direct {v0, p0}, Lcom/snaptube/search/b$c;-><init>(Lcom/snaptube/search/b;)V

    invoke-virtual {p1, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {p1, v1, v2, v0}, Lrx/c;->K0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/search/b$a;

    invoke-direct {v0, p0}, Lcom/snaptube/search/b$a;-><init>(Lcom/snaptube/search/b;)V

    new-instance v1, Lcom/snaptube/search/b$b;

    invoke-direct {v1, p0}, Lcom/snaptube/search/b$b;-><init>(Lcom/snaptube/search/b;)V

    invoke-virtual {p1, v0, v1}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/search/b;->d:Lo/wu7;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
