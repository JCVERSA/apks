.class public Lcom/doman/core/CoreMain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/doman/core/CoreMain; = null

.field private static b:Landroid/content/Context; = null

.field public static isreg:Z = false

.field public static isvip:Z = false

.field public static final mhandler:Landroid/os/Handler;

.field private static n:Ljava/lang/String; = "wssdk_1.0.0.CoreMain"

.field private static o:Ljava/lang/String; = "MGssp!@$123helloBoy"

.field private static p:Lcom/doman/core/manager/a/a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Lcom/doman/core/d/i;

.field private l:Lcom/doman/core/d/k;

.field private m:Lcom/doman/core/ig/manager/a;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/doman/core/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/doman/core/manager/a/a;

    invoke-direct {v0}, Lcom/doman/core/manager/a/a;-><init>()V

    sput-object v0, Lcom/doman/core/CoreMain;->p:Lcom/doman/core/manager/a/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/doman/core/CoreMain;->mhandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/doman/core/CoreMain;->isvip:Z

    sput-boolean v0, Lcom/doman/core/CoreMain;->isreg:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/doman/core/CoreMain;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/doman/core/CoreMain;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/doman/core/CoreMain;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/doman/core/CoreMain;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/doman/core/CoreMain;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/doman/core/CoreMain;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/doman/core/CoreMain;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doman/core/CoreMain;->j:Z

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/CoreMain;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/doman/core/CoreMain;->q:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static synthetic a()V
    .locals 0

    .line 2
    return-void
.end method

.method private a(Landroid/app/Application;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/doman/core/CoreMain$4;

    invoke-direct {v0, p0}, Lcom/doman/core/CoreMain$4;-><init>(Lcom/doman/core/CoreMain;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/CoreMain;Landroid/app/Application;)V
    .locals 4

    .line 4
    invoke-static {}, Lcom/doman/core/d/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/doman/core/b/b;->a(Landroid/content/Context;)Lcom/doman/core/b/b;

    move-result-object v0

    new-instance v1, Lcom/doman/core/CoreMain$5;

    invoke-direct {v1, p0, p1}, Lcom/doman/core/CoreMain$5;-><init>(Lcom/doman/core/CoreMain;Landroid/app/Application;)V

    new-instance p1, Lcom/doman/core/CoreMain$6;

    invoke-direct {p1, p0}, Lcom/doman/core/CoreMain$6;-><init>(Lcom/doman/core/CoreMain;)V

    iget-object p0, v0, Lcom/doman/core/b/b;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/doman/core/b/c;->a(Landroid/content/Context;)Lcom/doman/core/b/c;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v2}, Lcom/doman/core/b/c;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/doman/core/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "params"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/doman/core/b/f;->a:Lcom/doman/core/b/f;

    invoke-static {v2, v0}, Lcom/doman/core/b/c;->a(Lcom/doman/core/b/f;Ljava/util/Map;)Lcom/doman/core/b/e;

    move-result-object v0

    new-instance v2, Lcom/doman/core/b/a/f;

    iget-object v3, p0, Lcom/doman/core/b/c;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/doman/core/b/a/f;-><init>(Landroid/content/Context;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V

    iget-object p0, p0, Lcom/doman/core/b/c;->a:Lcom/android/net/o;

    invoke-virtual {p0, v2}, Lcom/android/net/o;->a(Lcom/android/net/n;)Lcom/android/net/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/CoreMain;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/doman/core/CoreMain;->j:Z

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7

    .line 6
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/doman/core/a/f;->s:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/doman/core/a/f;->C:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    array-length v3, v0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_4

    sget-object v5, Lcom/doman/core/CoreMain;->o:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/doman/core/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    :cond_4
    :goto_3
    return v1
.end method

.method public static synthetic b(Lcom/doman/core/CoreMain;Landroid/app/Application;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    :try_start_0
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/doman/core/a/f;->o:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->c()Z

    move-result v1

    sget-object v2, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/doman/core/CoreMain;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/doman/core/CoreMain$2;

    invoke-direct {v2, p0}, Lcom/doman/core/CoreMain$2;-><init>(Lcom/doman/core/CoreMain;)V

    invoke-static {v2}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v2, Lcom/doman/core/CoreMain$3;

    invoke-direct {v2, p0}, Lcom/doman/core/CoreMain$3;-><init>(Lcom/doman/core/CoreMain;)V

    invoke-static {v2}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    sget-boolean v1, Lcom/doman/core/CoreMain;->isreg:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    sput-boolean v1, Lcom/doman/core/CoreMain;->isreg:Z

    invoke-direct {p0, p1}, Lcom/doman/core/CoreMain;->a(Landroid/app/Application;)V

    :cond_4
    const-string p0, "key_ac_sch"

    invoke-static {p0, v0}, Lcom/doman/core/d/l;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic b(Lcom/doman/core/CoreMain;)Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doman/core/CoreMain;->j:Z

    return v0
.end method

.method public static synthetic c(Lcom/doman/core/CoreMain;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/CoreMain;->k:Lcom/doman/core/d/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/doman/core/d/i;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doman/core/CoreMain;->m:Lcom/doman/core/ig/manager/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/doman/core/ig/manager/a;

    invoke-direct {v0}, Lcom/doman/core/ig/manager/a;-><init>()V

    iput-object v0, p0, Lcom/doman/core/CoreMain;->m:Lcom/doman/core/ig/manager/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/doman/core/CoreMain;)V
    .locals 1

    iget-object v0, p0, Lcom/doman/core/CoreMain;->k:Lcom/doman/core/d/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/doman/core/d/i;

    invoke-direct {v0}, Lcom/doman/core/d/i;-><init>()V

    iput-object v0, p0, Lcom/doman/core/CoreMain;->k:Lcom/doman/core/d/i;

    :try_start_0
    invoke-virtual {v0}, Lcom/doman/core/d/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/doman/core/CoreMain;)V
    .locals 1

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->b()Lcom/doman/core/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/doman/core/a/f;->x:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doman/core/CoreMain;->l:Lcom/doman/core/d/k;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/doman/core/d/k;

    invoke-direct {v0}, Lcom/doman/core/d/k;-><init>()V

    iput-object v0, p0, Lcom/doman/core/CoreMain;->l:Lcom/doman/core/d/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sget-object v1, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_1

    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    return-object v2
.end method

.method public static getInstance()Lcom/doman/core/CoreMain;
    .locals 2

    sget-object v0, Lcom/doman/core/CoreMain;->a:Lcom/doman/core/CoreMain;

    if-nez v0, :cond_1

    const-class v0, Lcom/doman/core/CoreMain;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doman/core/CoreMain;->a:Lcom/doman/core/CoreMain;

    if-nez v1, :cond_0

    new-instance v1, Lcom/doman/core/CoreMain;

    invoke-direct {v1}, Lcom/doman/core/CoreMain;-><init>()V

    sput-object v1, Lcom/doman/core/CoreMain;->a:Lcom/doman/core/CoreMain;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/doman/core/CoreMain;->a:Lcom/doman/core/CoreMain;

    return-object v0
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isMainProcess()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/doman/core/CoreMain;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :catchall_0
    return v0
.end method


# virtual methods
.method public DebugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    sput-object p1, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getACName()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/doman/core/CoreMain;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/CoreMain;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getAdSdkSourceFrom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;

    return-object p0
.end method

.method public getDID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getGAID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getLm_mid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getResumeActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Lcom/doman/core/CoreMain;->getACName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doman/core/CoreMain;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->q:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getUA()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/doman/core/CoreMain;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->h:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Mozilla/5.0 (Linux; "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Android "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Build/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ImgoTV-aphone/7.5.4."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMdd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {p0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0}, Lcom/doman/core/d/d;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getmExtendBean()Lcom/doman/core/a/c;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/CoreMain;->r:Lcom/doman/core/a/c;

    return-object p0
.end method

.method public initparams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/doman/core/CoreMain;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/doman/core/CoreMain;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/doman/core/CoreMain;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreate(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/doman/core/CoreMain;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "key_ac_sch"

    invoke-static {v0}, Lcom/doman/core/d/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/doman/core/CoreMain;->isreg:Z

    invoke-direct {p0, p1}, Lcom/doman/core/CoreMain;->a(Landroid/app/Application;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    new-instance v0, Lcom/doman/core/CoreMain$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/doman/core/CoreMain$1;-><init>(Lcom/doman/core/CoreMain;ZLjava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    invoke-static {v0}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public setAdSdkSourceFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain;->g:Ljava/lang/String;

    return-void
.end method

.method public setExtendBean(Lcom/doman/core/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain;->r:Lcom/doman/core/a/c;

    return-void
.end method

.method public setGAID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain;->d:Ljava/lang/String;

    return-void
.end method

.method public setLiveid(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    move-result-object p0

    iput-object p1, p0, Lcom/doman/core/manager/a;->b:Ljava/lang/String;

    return-void
.end method

.method public setLm_mid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain;->f:Ljava/lang/String;

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/doman/core/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setOAID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/CoreMain;->c:Ljava/lang/String;

    return-void
.end method

.method public setUA(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/doman/core/CoreMain;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    move-result-object p0

    iput-object p1, p0, Lcom/doman/core/manager/a;->a:Ljava/lang/String;

    return-void
.end method
