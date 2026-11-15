.class public Lcom/mgmi/platform/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/platform/a$a;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/mgmi/platform/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/platform/a;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/platform/a;->c:Z

    invoke-direct {p0}, Lcom/mgmi/platform/a;->c()V

    return-void
.end method

.method public static a()Lcom/mgmi/platform/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgmi/platform/a;->f:Lcom/mgmi/platform/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgmi/platform/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgmi/platform/a;->f:Lcom/mgmi/platform/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgmi/platform/a;

    invoke-direct {v1}, Lcom/mgmi/platform/a;-><init>()V

    sput-object v1, Lcom/mgmi/platform/a;->f:Lcom/mgmi/platform/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/platform/a;->f:Lcom/mgmi/platform/a;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    .line 8
    :try_start_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/api/Countly;->l()Lcn/com/custommma/mobile/tracking/api/Countly;

    move-result-object p0

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/api/Countly;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgmi/platform/a;->d:Z

    return p1
.end method

.method private b(Landroid/app/Activity;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/api/Countly;->l()Lcn/com/custommma/mobile/tracking/api/Countly;

    move-result-object p0

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/api/Countly;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/mgmi/platform/a$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mgmi/platform/a$a;-><init>(Lcom/mgmi/platform/a;Lcom/mgmi/platform/a$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/mgmi/platform/a;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/mgmi/platform/a;->a:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/platform/a;->a:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/platform/a;->a:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/platform/a;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgmi/platform/a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/platform/a;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mgmi/platform/a;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/platform/a;->c:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/platform/a;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    iget p1, p0, Lcom/mgmi/platform/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgmi/platform/a;->b:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/mgmi/platform/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mgmi/platform/a;->b:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mgmi/platform/a;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/platform/a;->c:Z

    invoke-direct {p0, p1}, Lcom/mgmi/platform/a;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
