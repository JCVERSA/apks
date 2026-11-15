.class public Lk7d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7d$b;
    }
.end annotation


# static fields
.field public static volatile h:Lk7d;

.field public static i:Landroid/content/Context;


# instance fields
.field public a:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

.field public b:Lvad;

.field public c:Ljava/io/File;

.field public d:Ljava/util/Map;

.field public e:Ljava/util/Map;

.field public f:Ljava/util/List;

.field public g:Lk7d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk7d;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk7d;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk7d;->f:Ljava/util/List;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lk7d;->i:Landroid/content/Context;

    invoke-static {}, Lt3d;->e()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lk7d;->c:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lvad;

    invoke-static {}, Li4d;->a()Li4d;

    move-result-object v1

    invoke-virtual {v1}, Li4d;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lvad;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lk7d;->b:Lvad;

    new-instance v0, Lk7d$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lk7d$b;-><init>(Lk7d;Landroid/os/Looper;)V

    iput-object v0, p0, Lk7d;->g:Lk7d$b;

    invoke-virtual {p0, p1}, Lk7d;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lk7d;->i:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic b(Lk7d;)Lk7d$b;
    .locals 0

    iget-object p0, p0, Lk7d;->g:Lk7d$b;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lk7d;
    .locals 2

    sget-object v0, Lk7d;->h:Lk7d;

    if-nez v0, :cond_1

    const-class v0, Lk7d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk7d;->h:Lk7d;

    if-nez v1, :cond_0

    new-instance v1, Lk7d;

    invoke-direct {v1, p0}, Lk7d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lk7d;->h:Lk7d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lk7d;->h:Lk7d;

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lk7d;->c:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p2}, Lk7d;->h(Ljava/lang/String;)Lg2d;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/db/dao3/c;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v4

    iget-object v4, v4, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lk7d;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget-object v1, p0, Lk7d;->e:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lk7d;->e:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    sget-object p0, Lk7d;->i:Landroid/content/Context;

    sget p2, Lcom/mgmi/R$string;->mgmi_str_downloading:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1

    :cond_3
    invoke-virtual {p0, p2}, Lk7d;->o(Ljava/lang/String;)V

    new-instance v1, Lcom/mgmi/db/dao3/c;

    invoke-direct {v1}, Lcom/mgmi/db/dao3/c;-><init>()V

    iput-object p1, v1, Lcom/mgmi/db/dao3/c;->i:Ljava/lang/String;

    iput-object p2, v1, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lk7d;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lk7d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/mgmi/db/dao3/c;->d:J

    iput-wide v4, v1, Lcom/mgmi/db/dao3/c;->e:J

    iput-wide v2, v1, Lcom/mgmi/db/dao3/c;->g:J

    new-instance v0, Lg2d;

    invoke-direct {v0, v1}, Lg2d;-><init>(Lcom/mgmi/db/dao3/c;)V

    new-instance v2, Lr7d;

    invoke-direct {v2}, Lr7d;-><init>()V

    invoke-virtual {v0, v2}, Lg2d;->a(Lr7d;)V

    iget-object v2, p0, Lk7d;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw5d;

    new-instance v3, Lz8d;

    iget-object v4, p0, Lk7d;->a:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-direct {v3, v4}, Lz8d;-><init>(Lcom/mgmi/db/dao3/FileDownloadInfoDao;)V

    new-instance v4, Lk7d$a;

    invoke-direct {v4, p0, p2, v1}, Lk7d$a;-><init>(Lk7d;Ljava/lang/String;Lcom/mgmi/db/dao3/c;)V

    invoke-direct {v2, v3, v0, v4}, Lw5d;-><init>(Lcom/mgadplus/d/b;Lwed;La9d;)V

    sget-object p2, Lk7d;->i:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lk7d;->i(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lk7d;->b:Lvad;

    invoke-virtual {v0}, Lg2d;->e()Lr7d;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lvad;->a(Lw5d;Lr7d;)Lr7d;

    :cond_6
    return-object p1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lk7d;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg2d;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, v3, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lg2d;->e()Lr7d;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lk7d;->b:Lvad;

    invoke-virtual {v2}, Lg2d;->e()Lr7d;

    move-result-object v1

    invoke-virtual {p1, v1}, Lvad;->c(Lr7d;)Z

    :cond_5
    :try_start_0
    iget-object p0, p0, Lk7d;->a:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    invoke-static {p0}, Laud;->g(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public f(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object p0, p0, Lk7d;->d:Ljava/util/Map;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2d;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    return-object v0

    :catchall_0
    :cond_5
    :goto_1
    return-object v1
.end method

.method public final g(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mgmi/db/dao3/d;->a(Landroid/content/Context;)Lcom/mgmi/db/dao3/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/d;->c()Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    move-result-object p1

    iput-object p1, p0, Lk7d;->a:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/db/dao3/c;

    if-eqz v2, :cond_0

    iget-wide v3, v2, Lcom/mgmi/db/dao3/c;->g:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xf731400

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-object v3, v2, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    invoke-static {v3}, Laud;->g(Ljava/lang/String;)Z

    iget-object v3, p0, Lk7d;->a:Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    const-string v3, "download1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664\u4e0b\u8f7d\u8bb0\u5f55init\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgmi/db/dao3/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v3, Lg2d;

    invoke-direct {v3, v2}, Lg2d;-><init>(Lcom/mgmi/db/dao3/c;)V

    iget-object v4, p0, Lk7d;->d:Ljava/util/Map;

    iget-object v2, v2, Lcom/mgmi/db/dao3/c;->i:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "zhengfeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fzDownloadMode url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v3

    iget-object v3, v3, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public h(Ljava/lang/String;)Lg2d;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object p0, p0, Lk7d;->d:Ljava/util/Map;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2d;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lg2d;->f()Lcom/mgmi/db/dao3/c;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, v2, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    return-object v0

    :catchall_0
    :cond_5
    :goto_1
    return-object v1
.end method

.method public final i(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lk7d;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/db/dao3/c;

    iget-object v1, v0, Lcom/mgmi/db/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/db/dao3/c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    invoke-static {v0}, Laud;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7d;->f(Ljava/lang/String;)Lcom/mgmi/db/dao3/c;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mgmi/db/dao3/c;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lk7d;->i:Landroid/content/Context;

    invoke-static {p1, p0}, Lc9d;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)Ld6d;
    .locals 5

    iget-object v0, p0, Lk7d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk7d;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld6d;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v2, Ld6d;

    sget-object v3, Lk7d;->i:Landroid/content/Context;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {v2, v3, v1}, Ld6d;-><init>(Landroid/content/Context;I)V

    iput v0, v2, Ld6d;->e:I

    invoke-virtual {v2}, Ld6d;->a()V

    iget-object p0, p0, Lk7d;->e:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lk7d;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lk7d;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lk7d;->e(Ljava/lang/String;)Z

    return-void
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
