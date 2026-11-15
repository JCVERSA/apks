.class public final Lvdb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvdb$a;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lvdb$a;->q()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lec9;)V
    .locals 0

    invoke-static {p0, p1}, Lvdb$a;->t(Ljava/lang/String;Lec9;)V

    return-void
.end method

.method public static final q()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/transsion/log/upload/record/UploadRecordUtil;->a:Lcom/transsion/log/upload/record/UploadRecordUtil;

    sget-object v1, Lvdb;->a:Lvdb$a;

    invoke-virtual {v1}, Lvdb$a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/log/upload/record/UploadRecordUtil;->e(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lfq5;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lyb9;

    invoke-direct {v3}, Lyb9;-><init>()V

    new-instance v4, Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-direct {v4}, Lcom/transsion/log/upload/SendUbtRunnable;-><init>()V

    iput-object v4, v3, Lyb9;->d:Lcom/transsion/log/common/SendLogRunnable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lyb9;->f:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lyb9;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lykb;->b(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lyb9;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/transsion/log/common/SendLogRunnable;->setSendAction(Lyb9;)V

    invoke-virtual {v4}, Lcom/transsion/log/common/SendLogRunnable;->run()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lfq5;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreUpload error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UBT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static final t(Ljava/lang/String;Lec9;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lgq5;->g()Lgq5;

    move-result-object v0

    invoke-virtual {v0}, Lgq5;->b()V

    sget-object v0, Lvdb;->a:Lvdb$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvdb$a;->g(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lyb9;

    invoke-direct {v2}, Lyb9;-><init>()V

    new-instance v3, Lcom/transsion/log/upload/SendUbtRunnable;

    invoke-direct {v3}, Lcom/transsion/log/upload/SendUbtRunnable;-><init>()V

    iput-object v3, v2, Lyb9;->d:Lcom/transsion/log/common/SendLogRunnable;

    iput-object p0, v2, Lyb9;->f:Ljava/lang/String;

    iput-object v1, v2, Lyb9;->e:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lyb9;->b:Ljava/lang/String;

    invoke-static {v2}, Lfq5;->a(Lyb9;)V

    sget-object v1, Lcom/transsion/log/upload/record/UploadRecordUtil;->a:Lcom/transsion/log/upload/record/UploadRecordUtil;

    invoke-virtual {v0}, Lvdb$a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v2, Lyb9;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, p0, v4}, Lcom/transsion/log/upload/record/UploadRecordUtil;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/transsion/log/common/SendLogRunnable;->setSendAction(Lyb9;)V

    invoke-virtual {v3, p1}, Lcom/transsion/log/upload/SendUbtRunnable;->setSendLogCallback(Lec9;)V

    invoke-virtual {v3}, Lcom/transsion/log/common/SendLogRunnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uploadByDefaultStrategy error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UBT"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lvdb$a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lykb;->c(J)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->ACTION:Lcom/transsion/log/util/UBTLogLevel;

    invoke-virtual {p0, p3, p1, p2, v0}, Lvdb$a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->ACTION:Lcom/transsion/log/util/UBTLogLevel;

    invoke-virtual {p0, p3, p1, p2, v0}, Lvdb$a;->o(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V

    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lvdb$a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lykb;->c(J)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->ERROR:Lcom/transsion/log/util/UBTLogLevel;

    invoke-virtual {p0, p3, p1, p2, v0}, Lvdb$a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->ERROR:Lcom/transsion/log/util/UBTLogLevel;

    invoke-virtual {p0, p3, p1, p2, v0}, Lvdb$a;->o(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V

    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/Long;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lfq5;->c()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lfq5;->d()Lsr3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lsr3;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lvdb;->b()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/util/concurrent/ExecutorService;
    .locals 0

    invoke-static {}, Lvdb;->c()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lvdb$a;->k(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lykb;->c(J)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->NORMAL:Lcom/transsion/log/util/UBTLogLevel;

    invoke-virtual {p0, p3, p1, p2, v0}, Lvdb$a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    sget-object v0, Lcom/transsion/log/util/UBTLogLevel;->NORMAL:Lcom/transsion/log/util/UBTLogLevel;

    invoke-virtual {p0, p3, p1, p2, v0}, Lvdb$a;->o(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V

    :goto_0
    return-void
.end method

.method public final l(Lwdb;)V
    .locals 3

    if-eqz p1, :cond_5

    sget-object p0, Lvdb;->a:Lvdb$a;

    invoke-virtual {p1}, Lwdb;->m()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lvdb$a;->r(Landroid/content/Context;)V

    iget-object v0, p1, Lwdb;->h:Lsr3;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/log/strategy/DefaultFileStrategy;

    invoke-virtual {p1}, Lwdb;->o()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/transsion/log/strategy/DefaultFileStrategy;-><init>(J)V

    iput-object v0, p1, Lwdb;->h:Lsr3;

    invoke-virtual {p1}, Lwdb;->l()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/transsion/log/strategy/DefaultFileStrategy;->f(J)V

    :cond_2
    sget-object v0, Lcom/transsion/log/upload/net/RequestManager;->a:Lcom/transsion/log/upload/net/RequestManager;

    invoke-virtual {p1}, Lwdb;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/transsion/log/upload/net/RequestManager;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lfq5;->e(Lwdb;)V

    const/4 v0, 0x1

    sput-boolean v0, Lvdb;->d:Z

    invoke-virtual {p1}, Lwdb;->n()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lvdb;->d()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lvdb$a;->p()V

    invoke-static {v0}, Lvdb;->f(Z)V

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lfq5;->b(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    const-string p0, "host"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/log/upload/net/RequestManager;->a:Lcom/transsion/log/upload/net/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/log/upload/net/RequestManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string p0, "}"

    const-string v0, ":"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p1, p0}, Lfq5;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public final o(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/log/util/UBTLogLevel;)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string p0, "}"

    const-string v0, ":"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p1, p0}, Lfq5;->g(Ljava/lang/String;I)V

    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lvdb$a;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Ludb;

    invoke-direct {v0}, Ludb;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lvdb;->e(Landroid/content/Context;)V

    return-void
.end method

.method public final s(Lec9;Ljava/lang/String;)V
    .locals 1

    const-string v0, "feedbackId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lvdb$a;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Ltdb;

    invoke-direct {v0, p2, p1}, Ltdb;-><init>(Ljava/lang/String;Lec9;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
