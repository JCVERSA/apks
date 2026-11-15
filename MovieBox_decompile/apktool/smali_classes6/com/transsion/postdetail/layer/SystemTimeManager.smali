.class public final Lcom/transsion/postdetail/layer/SystemTimeManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/SystemTimeManager$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

.field private c:Z

.field private final d:Landroid/os/HandlerThread;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/transsion/postdetail/layer/SystemTimeManager$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string v1, "SystemTimeManager"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->d:Landroid/os/HandlerThread;

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;-><init>(Lcom/transsion/postdetail/layer/SystemTimeManager;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/postdetail/layer/SystemTimeManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/postdetail/layer/SystemTimeManager;)Lcom/transsion/postdetail/layer/SystemTimeManager$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->e()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->b:Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->d:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->c:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager;->e:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method
