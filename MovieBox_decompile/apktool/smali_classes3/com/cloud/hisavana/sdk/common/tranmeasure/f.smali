.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;,
        Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Z

.field private c:Z

.field private d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->e:Landroid/os/Handler;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->e:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->e(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;->a(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method private g()V
    .locals 4

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v2, 0x21

    .line 31
    .line 32
    if-lt v1, v2, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    invoke-static {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :catchall_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b:Z

    .line 21
    .line 22
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    .line 23
    .line 24
    return-void
.end method

.method protected c(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    .line 2
    .line 3
    return-void
.end method

.method protected h()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->g()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c:Z

    .line 6
    .line 7
    return-void
.end method
