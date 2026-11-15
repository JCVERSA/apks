.class public Lcom/mgmi/ads/api/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/ads/api/e/k;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/ads/api/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgmi/ads/api/e/k;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgmi/ads/api/e/k;->a:Lcom/mgmi/ads/api/e/k;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgmi/ads/api/e/k;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgmi/ads/api/e/k;->a:Lcom/mgmi/ads/api/e/k;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgmi/ads/api/e/k;

    invoke-direct {v1}, Lcom/mgmi/ads/api/e/k;-><init>()V

    sput-object v1, Lcom/mgmi/ads/api/e/k;->a:Lcom/mgmi/ads/api/e/k;

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
    sget-object v0, Lcom/mgmi/ads/api/e/k;->a:Lcom/mgmi/ads/api/e/k;

    return-object v0
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/e/k;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/e/k;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mgmi/ads/api/h;)V
    .locals 2

    .line 8
    sget-object v0, Lcom/mgmi/ads/api/h;->IS_SHOW_SCHEME:Lcom/mgmi/ads/api/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mgmi/f/e;->e:Z

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/mgmi/ads/api/h;->IS_DISMISS_SCHEME:Lcom/mgmi/ads/api/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/mgmi/f/e;->a()Lcom/mgmi/f/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mgmi/f/e;->e:Z

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mgmi/ads/api/e/k;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Lcom/mgmi/ads/api/e/k$1;

    invoke-direct {v0, p0, p1}, Lcom/mgmi/ads/api/e/k$1;-><init>(Lcom/mgmi/ads/api/e/k;Lcom/mgmi/ads/api/h;)V

    invoke-static {v0}, Lj4d;->b(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
