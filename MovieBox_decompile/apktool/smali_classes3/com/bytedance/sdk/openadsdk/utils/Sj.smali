.class public Lcom/bytedance/sdk/openadsdk/utils/Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;
    }
.end annotation


# static fields
.field public static Sj:Z = false

.field public static TKC:J

.field public static sP:J


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

.field private final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Fmk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

.field private final Jcg:Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

.field private volatile TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/adexpress/Sj;",
            ">;>;"
        }
    .end annotation
.end field

.field private Ym:Landroid/os/HandlerThread;

.field private aa:Landroid/os/Handler;

.field private final sef:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private uA:I

.field private final vS:Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

    .line 18
    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->vS:Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;

    .line 25
    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

    .line 32
    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj$1;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    .line 40
    .line 41
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    .line 51
    .line 52
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    .line 53
    .line 54
    new-instance v0, Ljava/util/LinkedList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private EjP()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/utils/Sj;)Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

    return-object p0
.end method

.method private Sj(Ljava/lang/Runnable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private TKC()V
    .locals 2

    .line 1
    const-string v0, "lifecycle"

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/utils/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/adexpress/Sj;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public Sj(Z)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return p1

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return p1

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    return p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/bytedance/sdk/component/adexpress/Sj;

    .line 44
    .line 45
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/adexpress/Sj;->Sj(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-ne v0, p1, :cond_2

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->isIsInit()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->vS:Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sP:J

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj:Z

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/Sj$1;

    .line 20
    .line 21
    invoke-direct {v3, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;Landroid/view/View;Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    const-string v2, "TTAD.ActivityLifecycle"

    .line 30
    .line 31
    new-array v3, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    aput-object p1, v3, v0

    .line 34
    .line 35
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    .line 2
    .line 3
    if-gtz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj:Z

    .line 19
    .line 20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/sef;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC:J

    .line 30
    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;

    .line 37
    .line 38
    sget-wide v2, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sP:J

    .line 39
    .line 40
    sget-wide v4, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC:J

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    move-object v0, p1

    .line 47
    move-object v1, p0

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;JJZ)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public sP()Landroid/app/Activity;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sP(Lcom/bytedance/sdk/component/adexpress/Sj;)Z
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
