.class public Lcom/mgmi/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field private static g:Lcom/mgmi/d/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mgmi/d/b;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mgmi/db/dao3/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mgmi/db/dao3/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/d/a;->f:Z

    new-instance v0, Lcom/mgmi/d/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mgmi/d/a$1;-><init>(Lcom/mgmi/d/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mgmi/d/a;->h:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/mgmi/d/a;
    .locals 2

    .line 5
    sget-object v0, Lcom/mgmi/d/a;->g:Lcom/mgmi/d/a;

    if-nez v0, :cond_1

    .line 6
    const-class v0, Lcom/mgmi/d/a;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/mgmi/d/a;->g:Lcom/mgmi/d/a;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/mgmi/d/a;

    invoke-direct {v1}, Lcom/mgmi/d/a;-><init>()V

    sput-object v1, Lcom/mgmi/d/a;->g:Lcom/mgmi/d/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/d/a;->g:Lcom/mgmi/d/a;

    return-object v0
.end method

.method private a(J)V
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/mgmi/d/a;->h:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    .line 27
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgmi/d/a;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/d/a;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgmi/d/a;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/d/a;Lcom/mgmi/db/dao3/g;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgmi/d/a;->a(Lcom/mgmi/db/dao3/g;)V

    return-void
.end method

.method private a(Lcom/mgmi/db/dao3/g;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/mgmi/d/a;->d()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/d/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgmi/d/a;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgmi/d/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/d/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/mgmi/db/dao3/g;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/mgmi/d/a;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mgmi/d/a;->f:Z

    .line 6
    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/mgmi/d/b;

    iget-object v1, p0, Lcom/mgmi/d/a;->b:Landroid/content/Context;

    new-instance v2, Lcom/mgmi/d/a$2;

    invoke-direct {v2, p0}, Lcom/mgmi/d/a$2;-><init>(Lcom/mgmi/d/a;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/mgmi/d/b;-><init>(Landroid/content/Context;Lcom/mgmi/db/dao3/g;Lcom/mgmi/d/b$a;)V

    iput-object v0, p0, Lcom/mgmi/d/a;->c:Lcom/mgmi/d/b;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()V
    .locals 9

    iget-object v0, p0, Lcom/mgmi/d/a;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    const-string v1, "scan"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mgmi/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/db/dao3/g;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/mgmi/db/dao3/g;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource expired : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "delete resource - "

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/db/dao3/g;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/mgmi/d/a;->d()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    :cond_3
    iget-object v5, p0, Lcom/mgmi/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete file - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/mgmi/d/a;->d()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v4, Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao$Properties;->a:Lorg/greenrobot/greendao/Property;

    filled-new-array {v4}, [Lorg/greenrobot/greendao/Property;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_7

    sget-object v4, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    const-string v6, "over 15 resource"

    invoke-static {v4, v6}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/db/dao3/g;

    if-eqz v4, :cond_6

    invoke-virtual {v0, v4}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/mgmi/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mgmi/db/dao3/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/mgmi/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/db/dao3/g;

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/mgmi/db/dao3/g;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcom/mgmi/db/dao3/g;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :cond_b
    if-eqz v1, :cond_c

    invoke-direct {p0, v1}, Lcom/mgmi/d/a;->b(Lcom/mgmi/db/dao3/g;)V

    goto :goto_4

    :cond_c
    sget-object p0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    const-string v0, "nothing to download"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/d/a;->b:Landroid/content/Context;

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mgmi/d/a;->d:Ljava/util/HashMap;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mgmi/d/a;->e:Ljava/util/HashMap;

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/mgmi/d/a;->c()Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v1, Lcom/mgmi/db/dao3/MgmiOfflineAdDao$Properties;->d:Lorg/greenrobot/greendao/Property;

    filled-new-array {v1}, [Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    move v1, v0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/db/dao3/f;

    if-eqz v2, :cond_0

    .line 18
    iget-object v3, p0, Lcom/mgmi/d/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/mgmi/db/dao3/f;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/mgmi/d/a;->d()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/db/dao3/g;

    if-eqz v1, :cond_2

    .line 23
    iget-object v2, p0, Lcom/mgmi/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/mgmi/db/dao3/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24
    :goto_3
    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/mgmi/d/a;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/mgmi/d/a;->h:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    const-wide/16 v1, 0x3e8

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public c()Lcom/mgmi/db/dao3/MgmiOfflineAdDao;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/mgmi/d/a;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/mgmi/db/dao3/d;->a(Landroid/content/Context;)Lcom/mgmi/db/dao3/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/d;->a()Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdDao exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/mgmi/d/a;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/mgmi/db/dao3/d;->a(Landroid/content/Context;)Lcom/mgmi/db/dao3/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/d;->b()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/mgmi/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdResDao exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
