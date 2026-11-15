.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/b;
.super Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;
.source "source.java"


# instance fields
.field private volatile a:Landroid/os/Handler;

.field private b:Z

.field private final c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

.field private final d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/Monitor;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    .line 9
    .line 10
    new-instance v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$a;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    .line 16
    .line 17
    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e:Ljava/lang/Runnable;

    .line 23
    .line 24
    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    .line 30
    .line 31
    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    .line 40
    .line 41
    const-wide/16 v2, 0xc8

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :catchall_0
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public end()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ssp_measure"

    .line 6
    .line 7
    const-string v2, "stop monitor"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :catchall_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->b:Z

    .line 2
    .line 3
    const-string v1, "ssp_measure"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "monitor is running"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "start monitor"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->a()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->d:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->c(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$a;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->c:Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->h()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
