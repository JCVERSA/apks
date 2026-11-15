.class public Lcom/mgtv/downloader/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/mgtv/downloader/util/b; = null

.field public static b:I = 0x2

.field public static c:I = 0x0

.field public static d:Z = false

.field public static e:I = 0x8

.field public static f:I = 0xd

.field private static h:I = 0x0

.field private static i:Z = true

.field private static j:Ljava/lang/String; = ""

.field private static k:Z = false

.field private static l:I = 0x1

.field private static o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mgtv/downloader/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Lcom/mgtv/downloader/b;


# instance fields
.field private g:Landroid/content/Context;

.field private m:Z

.field private n:Z

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mgtv/downloader/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/mgtv/downloader/net/entity/a;

.field private t:Lcom/mgtv/downloader/database/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/downloader/b;->m:Z

    iput-boolean v0, p0, Lcom/mgtv/downloader/b;->n:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/downloader/b;->s:Lcom/mgtv/downloader/net/entity/a;

    iput-object v0, p0, Lcom/mgtv/downloader/b;->t:Lcom/mgtv/downloader/database/c;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b;->b(Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/mgtv/downloader/b;
    .locals 2

    const-class v0, Lcom/mgtv/downloader/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/b;->r:Lcom/mgtv/downloader/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/downloader/b;

    invoke-direct {v1}, Lcom/mgtv/downloader/b;-><init>()V

    sput-object v1, Lcom/mgtv/downloader/b;->r:Lcom/mgtv/downloader/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lcom/mgtv/downloader/b;->r:Lcom/mgtv/downloader/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic a(Lcom/mgtv/downloader/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->j()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/downloader/b;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[Download-Exception] Message(%1$s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadSDK_1.8.0"

    invoke-static {p1, p0}, Lcom/hunantv/imgo/log/c/a$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Integer;Lcom/mgtv/downloader/a/b;)V
    .locals 1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    if-eqz p2, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/mgtv/downloader/a/a;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 131
    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v1

    const/16 v2, 0xa

    if-eq v2, v1, :cond_0

    goto/16 :goto_0

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startTaskByForce] start task success, videoID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    .line 134
    iget-object v2, v1, Lcom/mgtv/downloader/net/entity/a;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v2

    if-ltz v2, :cond_1

    .line 135
    const-string p0, "[startTaskByForce]activateDownload :status is downloading"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v3

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->h()Lcom/mgtv/downloader/a/a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mgtv/downloader/b;->b(Lcom/mgtv/downloader/a/a;)V

    .line 138
    :cond_2
    invoke-virtual {p1, v3}, Lcom/mgtv/downloader/a/a;->a(Z)I

    move-result p0

    if-gez p0, :cond_3

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startTaskByForce]start old download Task failed, taskID: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", videoID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v0

    .line 140
    :cond_3
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 141
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 142
    :cond_4
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    return v3

    :cond_5
    :goto_0
    return v0
.end method

.method private b(Ljava/lang/Integer;)Lcom/mgtv/downloader/a/b;
    .locals 1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/mgtv/downloader/b;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/downloader/a/b;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mgtv/downloader/a/a;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private b(Lcom/mgtv/downloader/a/a;)V
    .locals 2

    if-eqz p1, :cond_3

    const/16 v0, 0xa

    .line 4
    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v0

    if-ltz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mgtv/downloader/b;->e(I)I

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    invoke-direct {p0, v0}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Exception;)V

    .line 12
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[blockTask]videoID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/downloader/b;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/downloader/b;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->f()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/mgtv/downloader/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    return-object p0
.end method

.method private static d(I)I
    .locals 1

    .line 1
    sget v0, Lcom/mgtv/downloader/b;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mgtv/downloader/b;->h:I

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr v0, p0

    return v0
.end method

.method private e(I)I
    .locals 5

    .line 2
    sget-boolean p0, Lcom/mgtv/downloader/b;->k:Z

    if-nez p0, :cond_0

    .line 3
    const-string p0, "[downloaderBlockTask]download sdk not init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[downloaderBlockTask]downloader taskID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", block task"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 5
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/downloader/a/a;

    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v3

    const/16 v4, 0xb

    if-eq v4, v3, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 9
    const-string p1, "DownloadSDK_1.8.0"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderBlockTask]Task is already block, videoID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->h()V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[downloaderBlockTask] block success, videoID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 13
    :cond_4
    monitor-exit p0

    return v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mgtv/downloader/b;->i:Z

    return v0
.end method

.method private f(I)V
    .locals 6

    .line 20
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    if-nez v0, :cond_0

    .line 21
    const-string p0, "[setmUserDownloadFlow]download sdk not init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x16

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    .line 22
    sput-boolean p1, Lcom/mgtv/downloader/b;->d:Z

    .line 23
    const-string v0, "DownloadSDK_1.8.0"

    const-string v1, "[setmUserDownloadFlow]downloader setmUserDownloadFlow task all"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-nez v2, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v3

    const/16 v4, 0xa

    if-ne v4, v3, :cond_1

    .line 27
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_6

    .line 28
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 31
    invoke-direct {p0, v2}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/a/a;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 32
    const-string v3, "DownloadSDK_1.8.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setmUserDownloadFlow]resume error, videoID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 33
    :cond_4
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->h()V

    .line 34
    :cond_5
    :goto_1
    const-string v3, "DownloadSDK_1.8.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setmUserDownloadFlow]resume success, videoID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :cond_6
    :goto_2
    const-string v3, "DownloadSDK_1.8.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setmUserDownloadFlow]task is already resume, videoID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " taskID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36
    :cond_7
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    const/16 p0, 0x17

    if-ne p0, p1, :cond_9

    const/4 p0, 0x0

    .line 37
    sput-boolean p0, Lcom/mgtv/downloader/b;->d:Z

    :cond_9
    :goto_4
    return-void
.end method

.method private f()Z
    .locals 6

    .line 1
    const-string v0, "[startNextTask] start"

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->g()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3
    :cond_0
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v3

    const/16 v4, 0xa

    if-ne v4, v3, :cond_1

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3

    move v4, v0

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    const/4 v5, 0x2

    if-eq v5, v4, :cond_4

    const/16 v5, 0xb

    if-eq v5, v4, :cond_4

    const/4 v5, 0x6

    if-ne v5, v4, :cond_1

    :cond_4
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v2, v1}, Lcom/mgtv/downloader/a/a;->a(Z)I

    move-result v4

    if-gez v4, :cond_5

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startNextTask]start next download Task failed, taskID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 11
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_6

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startNextTask]start next download Task failed, lock or downloading, taskID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 13
    monitor-exit p0

    return v0

    .line 14
    :cond_6
    sget-object v4, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15
    sget-object v4, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_7
    sget-object v4, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[startNextTask] start next download Task success, taskID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 18
    monitor-exit p0

    return v1

    .line 19
    :cond_8
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()Z
    .locals 7

    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/downloader/a/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v5

    const/16 v6, 0xa

    if-eq v6, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    if-ne v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/mgtv/downloader/b;->a:Lcom/mgtv/downloader/util/b;

    iget p0, p0, Lcom/mgtv/downloader/util/b;->i:I

    if-ge v2, p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[canStartDownload] downloadingNum: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", maxDownloadTaskNum: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mgtv/downloader/b;->a:Lcom/mgtv/downloader/util/b;

    iget v0, v0, Lcom/mgtv/downloader/util/b;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_4
    sget-object p0, Lcom/mgtv/downloader/b;->a:Lcom/mgtv/downloader/util/b;

    iget p0, p0, Lcom/mgtv/downloader/util/b;->i:I

    if-ge v2, p0, :cond_5

    move v1, v4

    :cond_5
    return v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h()Lcom/mgtv/downloader/a/a;
    .locals 4

    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/downloader/a/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v2

    const/16 v3, 0xa

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRunningDownloader]name= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/downloader/net/entity/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", taskID= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 6

    new-instance v1, Lcom/mgtv/downloader/b$2;

    invoke-direct {v1, p0}, Lcom/mgtv/downloader/b$2;-><init>(Lcom/mgtv/downloader/b;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private j()V
    .locals 5

    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xb

    if-ne v4, v3, :cond_1

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->a()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    invoke-direct {p0}, Lcom/mgtv/downloader/b;->g()Z

    move-result p0

    if-nez p0, :cond_3

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/mgtv/downloader/a/a;->a(Z)I

    move-result v1

    if-gez v1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TryResumeLockTask]start next download Task failed, taskID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_4
    if-ne p0, v1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TryResumeLockTask]start next download Task failed, lock or downloading, taskID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_5
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TryResumeLockTask] start next download Task success, taskID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;Z)I
    .locals 6

    monitor-enter p0

    .line 160
    :try_start_0
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    if-nez v0, :cond_0

    .line 161
    const-string p1, "[downloaderResumeTask]download sdk not init, return"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 163
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderResumeTask]downloader taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resume taskforce: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-nez v2, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v4

    const/16 v5, 0xb

    if-eq v5, v4, :cond_1

    .line 167
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[downloaderResumeTask]task is already resume, videoID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " taskID:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 169
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v3

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    .line 170
    :cond_3
    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 171
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/net/entity/a;->p(Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 172
    invoke-direct {p0, v2}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/a/a;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[downloaderResumeTask]resume error, videoID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_5
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 175
    invoke-direct {p0, v2}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/a/a;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[downloaderResumeTask]resume error, videoID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    :cond_7
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object p1

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 179
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Exception;)V

    .line 181
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[downloaderResumeTask]resume success, videoID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 182
    :cond_8
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 183
    monitor-exit p0

    return v3

    .line 184
    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/mgtv/downloader/util/b;)I
    .locals 4

    .line 7
    const-string v0, "download sdk start init"

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 8
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    const-string p0, "download sdk already init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 10
    iget-object v0, p2, Lcom/mgtv/downloader/util/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/mgtv/downloader/util/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-static {p1}, Lcom/mgtv/downloader/p2p/MGP2pLoader;->testLoadSo(Landroid/content/Context;)V

    .line 12
    iput-object p1, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    .line 13
    sput-object p2, Lcom/mgtv/downloader/b;->a:Lcom/mgtv/downloader/util/b;

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/downloader/b;->c()V

    .line 15
    const-string p1, "download dir manager init success"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 16
    const-string p1, "download server config set finish"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/hunantv/imgo/util/p;->e()I

    move-result p1

    sput p1, Lcom/mgtv/downloader/b;->b:I

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "download get network finish, status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/mgtv/downloader/b;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 19
    sget p1, Lcom/mgtv/downloader/b;->b:I

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(I)V

    .line 20
    const-string p1, "download set network status finish"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mContext: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", r: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/mgtv/downloader/b;->a:Lcom/mgtv/downloader/util/b;

    iget p2, p1, Lcom/mgtv/downloader/util/b;->i:I

    const/4 v0, 0x5

    const/4 v2, 0x1

    if-le p2, v0, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    if-ge p2, v2, :cond_3

    move p2, v2

    :cond_3
    :goto_0
    iput p2, p1, Lcom/mgtv/downloader/util/b;->i:I

    .line 25
    sget-boolean p1, Lcom/mgtv/downloader/b;->i:Z

    if-eqz p1, :cond_4

    .line 26
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->isInitHls()Z

    move-result p1

    if-nez p1, :cond_4

    .line 27
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    sget-object v0, Lcom/mgtv/downloader/b;->j:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->downloaderInitialize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 28
    :cond_4
    sput-boolean v2, Lcom/mgtv/downloader/b;->k:Z

    .line 29
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->i()V

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "downloader initialize success, ret: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v1

    .line 31
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloader init failed, context is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", initInfo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public a(Lcom/mgtv/downloader/database/c;ILjava/lang/String;Lcom/mgtv/downloader/a/b;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 32
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    const/4 v11, -0x1

    if-nez v0, :cond_0

    .line 33
    const-string v0, "[downloaderStartTask]download sdk not init, return"

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v11

    :cond_0
    if-eqz v2, :cond_18

    if-nez v10, :cond_1

    goto/16 :goto_f

    .line 34
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->K()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 35
    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/mgtv/downloader/database/c;->w(Ljava/lang/String;)V

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderStartTask]start task, videoID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", definition: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->w()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mediaType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->G()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", taskType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", exInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v13, 0x0

    if-eq v7, v3, :cond_d

    const/16 v5, 0xb

    if-eq v7, v5, :cond_3

    goto/16 :goto_d

    .line 37
    :cond_3
    sget-object v5, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v5

    .line 38
    :try_start_0
    sget-object v6, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mgtv/downloader/a/a;

    if-nez v8, :cond_5

    goto :goto_0

    .line 39
    :cond_5
    sget-boolean v14, Lcom/mgtv/downloader/b;->i:Z

    if-nez v14, :cond_7

    invoke-virtual {v8}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v4, v14, :cond_7

    .line 40
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->isInitHls()Z

    move-result v14

    if-nez v14, :cond_6

    .line 41
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v14

    iget-object v15, v1, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    sget-object v12, Lcom/mgtv/downloader/b;->j:Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->downloaderInitialize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 42
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[downloaderStartTask]hls not init, but need init to play, ret: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 43
    :cond_6
    :goto_1
    sput-boolean v4, Lcom/mgtv/downloader/b;->i:Z

    .line 44
    :cond_7
    invoke-virtual {v8}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v14

    if-ne v12, v14, :cond_4

    .line 45
    invoke-virtual {v8}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->w()Ljava/lang/Integer;

    move-result-object v14

    if-ne v12, v14, :cond_4

    .line 46
    invoke-virtual {v8}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v4

    if-ne v4, v3, :cond_8

    invoke-virtual {v8}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_8

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderStartTask]video is downloading, return, videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", definition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->w()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 48
    monitor-exit v5

    return v11

    .line 49
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/mgtv/downloader/b;->d(I)I

    move-result v0

    .line 50
    invoke-virtual {v8, v7}, Lcom/mgtv/downloader/a/a;->b(I)V

    .line 51
    invoke-virtual {v8, v0}, Lcom/mgtv/downloader/a/a;->a(I)V

    .line 52
    invoke-virtual {v8, v9}, Lcom/mgtv/downloader/a/a;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/net/entity/a;)V

    .line 54
    new-instance v3, Lcom/mgtv/downloader/b$a;

    invoke-direct {v3, v1, v13}, Lcom/mgtv/downloader/b$a;-><init>(Lcom/mgtv/downloader/b;Lcom/mgtv/downloader/b$1;)V

    invoke-virtual {v8, v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/b;)V

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v10}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Integer;Lcom/mgtv/downloader/a/b;)V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mgtv/downloader/b;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v8, v1}, Lcom/mgtv/downloader/a/a;->a(Z)I

    move-result v1

    if-gez v1, :cond_9

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderStartTask]start play Task failed, taskID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoID: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 59
    monitor-exit v5

    return v11

    .line 60
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderStartTask]start play old task success, videoID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 61
    monitor-exit v5

    return v0

    .line 62
    :cond_a
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static/range {p2 .. p2}, Lcom/mgtv/downloader/b;->d(I)I

    move-result v0

    .line 64
    new-instance v12, Lcom/mgtv/downloader/a/a;

    iget-object v4, v1, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-virtual/range {p0 .. p1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object v5

    move-object v3, v12

    move v6, v0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/mgtv/downloader/a/a;-><init>(Landroid/content/Context;Lcom/mgtv/downloader/net/entity/a;IILjava/lang/String;)V

    .line 65
    new-instance v3, Lcom/mgtv/downloader/b$a;

    invoke-direct {v3, v1, v13}, Lcom/mgtv/downloader/b$a;-><init>(Lcom/mgtv/downloader/b;Lcom/mgtv/downloader/b$1;)V

    invoke-virtual {v12, v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/b;)V

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v10}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Integer;Lcom/mgtv/downloader/a/b;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mgtv/downloader/b;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v12, v1}, Lcom/mgtv/downloader/a/a;->a(Z)I

    move-result v1

    if-gez v1, :cond_b

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderStartTask]start play Task failed, taskID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoID: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v11

    .line 70
    :cond_b
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 71
    :try_start_1
    sget-object v3, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 72
    sget-object v3, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 73
    :cond_c
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderStartTask]start play task success, videoID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    move v11, v0

    goto/16 :goto_d

    .line 75
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 76
    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 77
    :cond_d
    sget-object v3, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    .line 78
    :try_start_4
    sget-object v5, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mgtv/downloader/a/a;

    if-nez v6, :cond_f

    goto :goto_5

    .line 79
    :cond_f
    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->w()Ljava/lang/Integer;

    move-result-object v12

    if-ne v8, v12, :cond_e

    .line 80
    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_12

    .line 81
    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_10

    goto :goto_7

    .line 82
    :cond_10
    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v0

    .line 83
    invoke-virtual {v6, v9}, Lcom/mgtv/downloader/a/a;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/net/entity/a;)V

    .line 85
    new-instance v4, Lcom/mgtv/downloader/b$a;

    invoke-direct {v4, v1, v13}, Lcom/mgtv/downloader/b$a;-><init>(Lcom/mgtv/downloader/b;Lcom/mgtv/downloader/b$1;)V

    invoke-virtual {v6, v4}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/b;)V

    .line 86
    invoke-virtual {v6, v7}, Lcom/mgtv/downloader/a/a;->b(I)V

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4, v10}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Integer;Lcom/mgtv/downloader/a/b;)V

    .line 88
    iget-object v4, v2, Lcom/mgtv/downloader/database/c;->M:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/mgtv/downloader/b;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v1

    if-ltz v1, :cond_11

    .line 90
    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    .line 91
    :cond_11
    :goto_6
    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    const-string v4, ""

    invoke-interface {v10, v11, v1, v4}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[downloaderStartTask]start download task use old task success, videoID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", taskID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 93
    monitor-exit v3

    return v0

    .line 94
    :cond_12
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderStartTask]downloading or complete, videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v0

    monitor-exit v3

    return v0

    .line 96
    :cond_13
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->P()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_14

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mgtv/downloader/database/c;->d(Ljava/lang/Long;)V

    .line 100
    const-string v0, "at"

    invoke-virtual {v2, v0}, Lcom/mgtv/downloader/database/c;->B(Ljava/lang/String;)V

    .line 101
    :try_start_5
    iget-object v0, v1, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    .line 102
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    invoke-direct {v1, v0}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Exception;)V

    goto :goto_a

    .line 104
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    invoke-direct {v1, v0}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Exception;)V

    .line 106
    :cond_14
    :goto_a
    invoke-static/range {p2 .. p2}, Lcom/mgtv/downloader/b;->d(I)I

    move-result v0

    .line 107
    invoke-virtual {v2, v3}, Lcom/mgtv/downloader/database/c;->B(Ljava/lang/String;)V

    .line 108
    new-instance v12, Lcom/mgtv/downloader/a/a;

    iget-object v4, v1, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-virtual/range {p0 .. p1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/database/c;)Lcom/mgtv/downloader/net/entity/a;

    move-result-object v5

    move-object v3, v12

    move v6, v0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/mgtv/downloader/a/a;-><init>(Landroid/content/Context;Lcom/mgtv/downloader/net/entity/a;IILjava/lang/String;)V

    .line 109
    new-instance v3, Lcom/mgtv/downloader/b$a;

    invoke-direct {v3, v1, v13}, Lcom/mgtv/downloader/b$a;-><init>(Lcom/mgtv/downloader/b;Lcom/mgtv/downloader/b$1;)V

    invoke-virtual {v12, v3}, Lcom/mgtv/downloader/a/a;->a(Lcom/mgtv/downloader/a/b;)V

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v10}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Integer;Lcom/mgtv/downloader/a/b;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mgtv/downloader/b;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {v12}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_15

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[downloaderStartTask]start download Task, taskID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", exInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 114
    const-string v3, "initDownloadList"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v12, v3}, Lcom/mgtv/downloader/a/a;->a(Z)I

    move-result v4

    if-gez v4, :cond_15

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderStartTask]start download Task failed, taskID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    move v11, v0

    .line 117
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/mgtv/downloader/b;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 118
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 119
    :try_start_6
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 120
    monitor-exit v1

    goto :goto_c

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 121
    :cond_16
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 122
    :try_start_7
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 124
    :goto_c
    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v0

    if-ltz v0, :cond_17

    .line 125
    invoke-virtual {v12}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v0

    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->d(Ljava/lang/Integer;)V

    .line 126
    :cond_17
    invoke-virtual {v12}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v10, v11, v0, v1}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderStartTask]start download task success, videoID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/downloader/database/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :goto_d
    return v11

    :catchall_4
    move-exception v0

    .line 128
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 129
    :goto_e
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 130
    :cond_18
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderStartTask]param is error, downloadDBInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v11
.end method

.method public a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b;->t:Lcom/mgtv/downloader/database/c;

    if-nez v0, :cond_1

    .line 288
    new-instance v0, Lcom/mgtv/downloader/database/c;

    invoke-direct {v0}, Lcom/mgtv/downloader/database/c;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/b;->t:Lcom/mgtv/downloader/database/c;

    .line 289
    :cond_1
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->a:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Lcom/mgtv/downloader/b;->t:Lcom/mgtv/downloader/database/c;

    iput-object v0, v1, Lcom/mgtv/downloader/database/c;->a:Ljava/lang/Long;

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/mgtv/downloader/b;->t:Lcom/mgtv/downloader/database/c;

    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->b:Ljava/lang/String;

    .line 292
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->c:Ljava/lang/String;

    .line 293
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->d:Ljava/lang/String;

    .line 294
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->e:Ljava/lang/String;

    .line 295
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    .line 296
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->g:Ljava/lang/Long;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->g:Ljava/lang/Long;

    .line 297
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->h:Ljava/lang/Long;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->h:Ljava/lang/Long;

    .line 298
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->i:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->i:Ljava/lang/Integer;

    .line 299
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->j:Ljava/lang/Long;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->j:Ljava/lang/Long;

    .line 300
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->k:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->k:Ljava/lang/Integer;

    .line 301
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->l:Ljava/lang/String;

    .line 302
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->m:Ljava/lang/String;

    .line 303
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->n:Ljava/lang/String;

    .line 304
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->p:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->o:Ljava/lang/Integer;

    .line 305
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->q:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->p:Ljava/lang/Integer;

    .line 306
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->q:Ljava/lang/String;

    .line 307
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->r:Ljava/lang/String;

    .line 308
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->s:Ljava/lang/String;

    .line 309
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->u:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->t:Ljava/lang/String;

    .line 310
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->v:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->u:Ljava/lang/Integer;

    .line 311
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->w:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->v:Ljava/lang/Integer;

    .line 312
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->x:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    .line 313
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->x:Ljava/lang/String;

    .line 314
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->y:Ljava/lang/String;

    .line 315
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->z:Ljava/lang/String;

    .line 316
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->B:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->A:Ljava/lang/String;

    .line 317
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->C:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->B:Ljava/lang/String;

    .line 318
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->E:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->H:Ljava/lang/String;

    .line 319
    iget-object v1, p1, Lcom/mgtv/downloader/net/entity/a;->F:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    iput-object v1, v0, Lcom/mgtv/downloader/database/c;->G:Ljava/lang/Integer;

    .line 320
    iget-object p0, p0, Lcom/mgtv/downloader/b;->t:Lcom/mgtv/downloader/database/c;

    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->K:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->L:Ljava/lang/String;

    .line 322
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->W:Ljava/lang/Integer;

    .line 323
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->M:Ljava/lang/String;

    .line 324
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->K:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->N:Ljava/lang/String;

    .line 325
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->O:Ljava/lang/String;

    .line 326
    iput-object v2, p0, Lcom/mgtv/downloader/database/c;->P:Ljava/lang/String;

    .line 327
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->Q:Ljava/lang/String;

    .line 328
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->R:Ljava/lang/String;

    .line 329
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->P:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->S:Ljava/lang/String;

    .line 330
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->T:Ljava/lang/String;

    .line 331
    iget-object v0, p1, Lcom/mgtv/downloader/net/entity/a;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/database/c;->U:Ljava/lang/String;

    .line 332
    iget-object p1, p1, Lcom/mgtv/downloader/net/entity/a;->T:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/downloader/database/c;->V:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/mgtv/downloader/database/c;)Lcom/mgtv/downloader/net/entity/a;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/b;->s:Lcom/mgtv/downloader/net/entity/a;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lcom/mgtv/downloader/net/entity/a;

    invoke-direct {v0}, Lcom/mgtv/downloader/net/entity/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/downloader/b;->s:Lcom/mgtv/downloader/net/entity/a;

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/mgtv/downloader/b;->s:Lcom/mgtv/downloader/net/entity/a;

    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->a:Ljava/lang/Long;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->a:Ljava/lang/Long;

    .line 245
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->b:Ljava/lang/String;

    .line 246
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->c:Ljava/lang/String;

    .line 247
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->d:Ljava/lang/String;

    .line 248
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->e:Ljava/lang/String;

    .line 249
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->f:Ljava/lang/String;

    .line 250
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->g:Ljava/lang/Long;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->g:Ljava/lang/Long;

    .line 251
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->h:Ljava/lang/Long;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->h:Ljava/lang/Long;

    .line 252
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->i:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->i:Ljava/lang/Integer;

    .line 253
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->j:Ljava/lang/Long;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->j:Ljava/lang/Long;

    .line 254
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->k:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->k:Ljava/lang/Integer;

    .line 255
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->m:Ljava/lang/String;

    .line 256
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->n:Ljava/lang/String;

    .line 257
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->o:Ljava/lang/String;

    .line 258
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->o:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->p:Ljava/lang/Integer;

    .line 259
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->p:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->q:Ljava/lang/Integer;

    .line 260
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->r:Ljava/lang/String;

    .line 261
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->s:Ljava/lang/String;

    .line 262
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->t:Ljava/lang/String;

    .line 263
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->u:Ljava/lang/String;

    .line 264
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->u:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->v:Ljava/lang/Integer;

    .line 265
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->v:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->w:Ljava/lang/Integer;

    .line 266
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->w:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->x:Ljava/lang/Integer;

    .line 267
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->y:Ljava/lang/String;

    .line 268
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->z:Ljava/lang/String;

    .line 269
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->A:Ljava/lang/String;

    .line 270
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->B:Ljava/lang/String;

    .line 271
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->B:Ljava/lang/String;

    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->C:Ljava/lang/String;

    .line 272
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->H:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->E:Ljava/lang/String;

    .line 273
    iget-object v1, p1, Lcom/mgtv/downloader/database/c;->G:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    iput-object v1, v0, Lcom/mgtv/downloader/net/entity/a;->F:Ljava/lang/Integer;

    .line 274
    iget-object p0, p0, Lcom/mgtv/downloader/b;->s:Lcom/mgtv/downloader/net/entity/a;

    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->K:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->D:Ljava/lang/String;

    .line 275
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->H:Ljava/lang/String;

    .line 276
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->W:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->l:Ljava/lang/Integer;

    .line 277
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->M:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->L:Ljava/lang/String;

    .line 278
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->K:Ljava/lang/String;

    .line 279
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->M:Ljava/lang/String;

    .line 280
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->P:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->N:Ljava/lang/String;

    .line 281
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->J:Ljava/lang/String;

    .line 282
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->O:Ljava/lang/String;

    .line 283
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->P:Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->T:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->R:Ljava/lang/String;

    .line 285
    iget-object v0, p1, Lcom/mgtv/downloader/database/c;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/downloader/net/entity/a;->S:Ljava/lang/String;

    .line 286
    iget-object p1, p1, Lcom/mgtv/downloader/database/c;->V:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/downloader/net/entity/a;->T:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    .line 143
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    if-nez v0, :cond_0

    .line 144
    const-string p0, "[downloaderGetPlayUrl]download sdk not init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 145
    const-string p0, ""

    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get play url, taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-nez v2, :cond_2

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 150
    sget-boolean p1, Lcom/mgtv/downloader/b;->i:Z

    if-nez p1, :cond_4

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->e()I

    move-result p1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_4

    .line 151
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->isInitHls()Z

    move-result p1

    if-nez p1, :cond_3

    .line 152
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p1

    iget-object p0, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    sget-object v3, Lcom/mgtv/downloader/b;->j:Ljava/lang/String;

    invoke-virtual {p1, p0, v3}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->downloaderInitialize(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hls not init, but need init to play, ret: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 154
    :cond_3
    :goto_1
    sput-boolean v1, Lcom/mgtv/downloader/b;->i:Z

    .line 155
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "play url: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->f()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 157
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const-string p0, ""

    return-object p0

    .line 159
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 185
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    if-nez v0, :cond_0

    .line 186
    const-string p0, "[downloaderPushEvent]download sdk not init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xd

    const/16 v1, 0x8

    const/16 v2, 0xe

    const/4 v3, 0x7

    if-eq v3, p1, :cond_e

    if-eq v2, p1, :cond_e

    if-eq v1, p1, :cond_e

    if-ne v0, p1, :cond_1

    goto/16 :goto_5

    .line 187
    :cond_1
    sget-boolean v0, Lcom/mgtv/downloader/b;->i:Z

    if-eqz v0, :cond_2

    .line 188
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->pushEvent(ILjava/lang/String;)V

    :cond_2
    const/16 v0, 0x14

    const/4 v1, 0x1

    if-ne v0, p1, :cond_4

    .line 189
    invoke-static {}, Lcom/mgtv/downloader/c;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 190
    invoke-static {v1}, Lcom/mgtv/downloader/c;->a(Z)V

    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->f()Z

    goto/16 :goto_3

    :cond_4
    const/16 v0, 0x15

    if-ne v0, p1, :cond_5

    .line 192
    invoke-static {}, Lcom/mgtv/downloader/c;->a()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x0

    .line 193
    invoke-static {p0}, Lcom/mgtv/downloader/c;->a(Z)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    if-eq v1, p1, :cond_8

    if-eq v0, p1, :cond_8

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 p2, 0x16

    if-eq p2, p1, :cond_7

    const/16 p2, 0x17

    if-ne p2, p1, :cond_d

    .line 194
    :cond_7
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b;->f(I)V

    goto :goto_3

    .line 195
    :cond_8
    :goto_0
    sput p1, Lcom/mgtv/downloader/b;->b:I

    .line 196
    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(I)V

    .line 197
    const-string p0, ""

    if-ne v1, p1, :cond_9

    .line 198
    const-string p0, "wifi on"

    goto :goto_1

    :cond_9
    if-ne v0, p1, :cond_a

    .line 199
    const-string p0, "no network"

    goto :goto_1

    :cond_a
    if-nez p1, :cond_b

    .line 200
    const-string p0, "mobile"

    .line 201
    :cond_b
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "push network: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", eventMessage: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 202
    sget-object p0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    .line 203
    :try_start_0
    sget-object p1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mgtv/downloader/a/a;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 204
    :cond_c
    monitor-exit p0

    :cond_d
    :goto_3
    return-void

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_e
    :goto_5
    if-ne v3, p1, :cond_f

    .line 205
    sget p0, Lcom/mgtv/downloader/b;->e:I

    if-ne v1, p0, :cond_f

    .line 206
    const-string p0, "app to back"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 207
    sput p1, Lcom/mgtv/downloader/b;->e:I

    .line 208
    sget-boolean p0, Lcom/mgtv/downloader/b;->i:Z

    if-eqz p0, :cond_12

    .line 209
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->pushEvent(ILjava/lang/String;)V

    goto :goto_6

    :cond_f
    if-ne v2, p1, :cond_10

    .line 210
    sget p0, Lcom/mgtv/downloader/b;->f:I

    if-ne v0, p0, :cond_10

    .line 211
    const-string p0, "screen off"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 212
    sput p1, Lcom/mgtv/downloader/b;->f:I

    .line 213
    sget-boolean p0, Lcom/mgtv/downloader/b;->i:Z

    if-eqz p0, :cond_12

    .line 214
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->pushEvent(ILjava/lang/String;)V

    goto :goto_6

    :cond_10
    if-ne v1, p1, :cond_11

    .line 215
    invoke-static {}, Lcom/mgtv/downloader/util/d;->g()Z

    move-result p0

    if-eqz p0, :cond_11

    sget p0, Lcom/mgtv/downloader/b;->e:I

    if-ne v3, p0, :cond_11

    .line 216
    const-string p0, "app to front"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 217
    sput p1, Lcom/mgtv/downloader/b;->e:I

    .line 218
    sget-boolean p0, Lcom/mgtv/downloader/b;->i:Z

    if-eqz p0, :cond_12

    .line 219
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->pushEvent(ILjava/lang/String;)V

    goto :goto_6

    :cond_11
    if-ne v0, p1, :cond_12

    .line 220
    invoke-static {}, Lcom/mgtv/downloader/util/d;->f()Z

    move-result p0

    if-eqz p0, :cond_12

    sget p0, Lcom/mgtv/downloader/b;->f:I

    if-ne v2, p0, :cond_12

    .line 221
    const-string p0, "screen on"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 222
    sput p1, Lcom/mgtv/downloader/b;->f:I

    .line 223
    sget-boolean p0, Lcom/mgtv/downloader/b;->i:Z

    if-eqz p0, :cond_12

    .line 224
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->pushEvent(ILjava/lang/String;)V

    :cond_12
    :goto_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->isInitHls()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 226
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->setUserData(Ljava/util/Map;)V

    .line 227
    :cond_0
    const-string p0, "trial_time"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/d;->a(I)V

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[setUserData] trialTime\uff1a "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/downloader/util/d;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized b(I)I
    .locals 6

    monitor-enter p0

    .line 13
    :try_start_0
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    if-nez v0, :cond_0

    .line 14
    const-string p1, "[downloaderPauseTask]download sdk not init, return"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 16
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderPauseTask] downloader taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pause task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-nez v2, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v4

    const/16 v5, 0xa

    if-ne v5, v4, :cond_5

    .line 21
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderPauseTask]task is already pause, videoID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 23
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v3

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 24
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->i()V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderPauseTask] pause success, videoID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :try_start_4
    iget-object p1, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object p1

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Exception;)V

    .line 29
    :goto_1
    invoke-direct {p0}, Lcom/mgtv/downloader/b;->f()Z

    move-result p1

    if-nez p1, :cond_4

    .line 30
    const-string p1, "start next Task failed"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 31
    :cond_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v3

    .line 32
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->d()I

    move-result v2

    const/16 v4, 0xb

    if-ne v4, v2, :cond_1

    .line 33
    const-string p1, "offline play no need to pause"

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 34
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v3

    .line 35
    :cond_6
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 36
    monitor-exit p0

    return v3

    .line 37
    :goto_2
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p1

    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadSDK_1.8.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p0, p0, Lcom/mgtv/downloader/b;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    const/4 p0, -0x1

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public c(I)I
    .locals 4

    .line 7
    sget-boolean v0, Lcom/mgtv/downloader/b;->k:Z

    if-nez v0, :cond_0

    .line 8
    const-string p0, "[downloaderDeleteTask]download sdk not init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[downloaderDeleteTask]downloader taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delete task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/downloader/a/a;

    if-nez v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->c()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[downloaderDeleteTask]Task is deleted, videoID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/mgtv/downloader/database/d;->a(Landroid/content/Context;)Lcom/mgtv/downloader/database/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/database/d;->a()Lcom/mgtv/downloader/database/DownloadInfoDao;

    move-result-object v1

    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mgtv/downloader/b;->a(Lcom/mgtv/downloader/net/entity/a;)Lcom/mgtv/downloader/database/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 15
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    invoke-direct {p0, v1}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Exception;)V

    .line 17
    :goto_1
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->b()Lcom/mgtv/downloader/net/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mgtv/downloader/b;->a(Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/mgtv/downloader/b;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v2}, Lcom/mgtv/downloader/a/a;->g()V

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/b;->a(Ljava/lang/Integer;)V

    .line 21
    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    const-string p0, "downloader initDownloadDir fail "

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/downloader/dir/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/dir/a;->b(Landroid/content/Context;)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/mgtv/downloader/dir/a;->c()Lcom/mgtv/downloader/dir/a;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/downloader/b;->g:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/mgtv/downloader/dir/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 2
    sget-boolean p0, Lcom/mgtv/downloader/b;->k:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3
    const-string p0, "download sdk not init, return"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v0

    .line 4
    :cond_0
    const-string p0, "downloader deInit success"

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 5
    sget-boolean p0, Lcom/mgtv/downloader/b;->i:Z

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->downloaderDeinitialize()I

    .line 7
    :cond_1
    sget-object p0, Lcom/mgtv/downloader/b;->a:Lcom/mgtv/downloader/util/b;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 8
    sput-object p0, Lcom/mgtv/downloader/b;->a:Lcom/mgtv/downloader/util/b;

    :cond_2
    return v0
.end method
