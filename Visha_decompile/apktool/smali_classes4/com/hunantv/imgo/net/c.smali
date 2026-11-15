.class public Lcom/hunantv/imgo/net/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/net/c$b;,
        Lcom/hunantv/imgo/net/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hunantv/imgo/net/c$a;

.field private b:Lcom/hunantv/imgo/net/c$b;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/os/Handler;

.field private f:I

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/imgo/net/c;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hunantv/imgo/net/c;->e:Landroid/os/Handler;

    new-instance v0, Lcom/hunantv/imgo/net/c$1;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/net/c$1;-><init>(Lcom/hunantv/imgo/net/c;)V

    iput-object v0, p0, Lcom/hunantv/imgo/net/c;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/imgo/net/c;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/hunantv/imgo/net/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/hunantv/imgo/net/c;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/hunantv/imgo/net/c;)Lcom/hunantv/imgo/net/c$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/imgo/net/c;->b:Lcom/hunantv/imgo/net/c$b;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 11
    const-string p0, "Unknown"

    return-object p0

    .line 12
    :cond_0
    const-string p0, "No Network"

    return-object p0

    .line 13
    :cond_1
    const-string p0, "Wifi"

    return-object p0

    .line 14
    :cond_2
    const-string p0, "Mobile"

    return-object p0
.end method

.method public static synthetic b(Lcom/hunantv/imgo/net/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/imgo/net/c;->f:I

    return p0
.end method

.method public static synthetic b(Lcom/hunantv/imgo/net/c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/imgo/net/c;->d:I

    return p1
.end method

.method public static c()I
    .locals 4

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return v0

    :catchall_0
    :cond_4
    :goto_1
    return v1
.end method

.method public static synthetic c(Lcom/hunantv/imgo/net/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hunantv/imgo/net/c;->d:I

    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/hunantv/imgo/net/c;->c()I

    move-result v0

    invoke-static {v0}, Lcom/hunantv/imgo/net/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/hunantv/imgo/net/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hunantv/imgo/net/c;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/imgo/net/c;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hunantv/imgo/net/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hunantv/imgo/net/c;->e:Landroid/os/Handler;

    iget-object p0, p0, Lcom/hunantv/imgo/net/c;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/hunantv/imgo/net/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 8
    new-instance v2, Lcom/hunantv/imgo/net/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/hunantv/imgo/net/c$a;-><init>(Lcom/hunantv/imgo/net/c;Lcom/hunantv/imgo/net/c$1;)V

    iput-object v2, p0, Lcom/hunantv/imgo/net/c;->a:Lcom/hunantv/imgo/net/c$a;

    .line 9
    invoke-static {}, Lcom/hunantv/imgo/net/c;->c()I

    move-result v2

    iput v2, p0, Lcom/hunantv/imgo/net/c;->d:I

    .line 10
    iget-object p0, p0, Lcom/hunantv/imgo/net/c;->a:Lcom/hunantv/imgo/net/c$a;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/c$b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/imgo/net/c;->b:Lcom/hunantv/imgo/net/c$b;

    return-void
.end method

.method public b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/hunantv/imgo/net/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/hunantv/imgo/net/c;->a:Lcom/hunantv/imgo/net/c$a;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/hunantv/imgo/net/c;->a:Lcom/hunantv/imgo/net/c$a;

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/hunantv/imgo/net/c;->d:I

    return-void
.end method
