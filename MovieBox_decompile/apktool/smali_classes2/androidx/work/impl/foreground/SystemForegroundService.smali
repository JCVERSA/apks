.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/LifecycleService;
.source "source.java"

# interfaces
.implements Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/SystemForegroundService$b;,
        Landroidx/work/impl/foreground/SystemForegroundService$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;

.field private static g:Landroidx/work/impl/foreground/SystemForegroundService;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Z

.field d:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

.field e:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemFgService"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->g:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private f()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "notification"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/app/NotificationManager;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    .line 25
    .line 26
    new-instance v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->n(Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public a(ILandroid/app/Notification;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$2;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/foreground/SystemForegroundService$2;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(IILandroid/app/Notification;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p3, p2}, Landroidx/work/impl/foreground/SystemForegroundService$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Landroidx/work/impl/foreground/SystemForegroundService$3;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Landroidx/work/impl/foreground/SystemForegroundService;->g:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->l()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget-object p3, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "Re-initializing SystemForegroundService after a request to shut-down."

    .line 15
    .line 16
    invoke-virtual {p2, p3, v0}, Landroidx/work/j;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->l()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->f()V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->m(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x3

    .line 38
    return p1
.end method

.method public stop()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    .line 3
    .line 4
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "All commands completed."

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1a

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->g:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
