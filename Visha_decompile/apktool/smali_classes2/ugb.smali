.class public final Lugb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltw4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lww4;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lugb;->p(Lww4;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrv4;Lww4;ZLugb;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lugb;->n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrv4;Lww4;ZLugb;)V

    return-void
.end method

.method public static synthetic e(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lugb;->r(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lugb;Lww4;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lugb;->j(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lugb;Lww4;)V

    return-void
.end method

.method public static final synthetic g(Lugb;Ljava/lang/String;Lww4;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lugb;->k(Ljava/lang/String;Lww4;)V

    return-void
.end method

.method public static final synthetic h(Lugb;Ljava/lang/String;Ljava/lang/String;Lww4;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lugb;->l(Ljava/lang/String;Ljava/lang/String;Lww4;)V

    return-void
.end method

.method public static final synthetic i(Lugb;Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lugb;->q(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    return-void
.end method

.method public static final j(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lugb;Lww4;)V
    .locals 7

    const-string v0, "$url"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$finalHeaders"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$updateManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    const-string/jumbo v1, "update"

    const-string/jumbo v2, "update url -> "

    invoke-static {v2, p0}, Ly45;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Lugb$a;

    invoke-direct {v6, p3, p0, p4}, Lugb$a;-><init>(Lugb;Ljava/lang/String;Lww4;)V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tupdate/net/network/HttpRequestor;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final n(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrv4;Lww4;ZLugb;)V
    .locals 7

    const-string v0, "$url"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$finalHeaders"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$updateManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Lugb$b;

    invoke-direct {v6, p3, p4, p5, p6}, Lugb$b;-><init>(Lrv4;Lww4;ZLugb;)V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tupdate/net/network/HttpRequestor;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/transsion/http/impl/StringCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    const-string p2, "Exception"

    invoke-interface {p3, p1, p2}, Lrv4;->a(ILjava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final p(Lww4;Ljava/lang/String;)V
    .locals 7

    const-string v0, "$updateManager"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ldhb;->a:Ldhb;

    invoke-interface {p0, p1}, Lww4;->a(Ljava/lang/String;)Lcom/cloud/tupdate/bean/UpdateEntity;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Ldhb;->m(Ldhb;Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final r(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 1

    const-string v0, "$updateManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldhb;->a:Ldhb;

    invoke-virtual {v0, p0, p1, p2}, Ldhb;->l(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lww4;)V
    .locals 7

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p4, p2}, Lugb;->m(Lww4;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sget-object p2, Lvk;->a:Lvk;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lvk;->H(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->b:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;

    invoke-virtual {p2}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;->a()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lqgb;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lqgb;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lugb;Lww4;)V

    invoke-virtual {p2, v0}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lww4;Lrv4;Z)V
    .locals 9

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateManager"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p4, p2}, Lugb;->m(Lww4;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sget-object p2, Lvk;->a:Lvk;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lvk;->H(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->b:Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;

    invoke-virtual {p2}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil$Companion;->a()Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lsgb;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    move v7, p6

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lsgb;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrv4;Lww4;ZLugb;)V

    invoke-virtual {p2, v0}, Lcom/cloud/tupdate/net/utils/ThreadPoolUtil;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    const-string p2, "Exception"

    invoke-interface {p5, p1, p2}, Lrv4;->a(ILjava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/String;Lww4;)V
    .locals 0

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lww4;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lugb;->o(Ljava/lang/String;Lww4;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Lww4;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v0, Lqa1;->a:Lqa1;

    invoke-virtual {v0}, Lqa1;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mcc"

    invoke-virtual {v0}, Lqa1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "brand"

    invoke-virtual {v0}, Lqa1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osVersion"

    invoke-virtual {v0}, Lqa1;->q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "whiteList"

    invoke-interface {p1}, Lww4;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    invoke-interface {p0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public o(Ljava/lang/String;Lww4;)V
    .locals 1

    const-string p0, "result"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "updateManager"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lrgb;

    invoke-direct {v0, p2, p1}, Lrgb;-><init>(Lww4;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final q(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Ltgb;

    invoke-direct {v0, p1, p2, p3}, Ltgb;-><init>(Lcom/cloud/tupdate/bean/UpdateEntity;Lww4;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
