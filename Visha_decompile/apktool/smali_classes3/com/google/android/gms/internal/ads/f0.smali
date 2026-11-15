.class public final Lcom/google/android/gms/internal/ads/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final n:Landroid/os/Handler;


# instance fields
.field public final b:Landroid/content/Context;

.field public c:Landroid/app/Application;

.field public final d:Landroid/os/PowerManager;

.field public final e:Landroid/app/KeyguardManager;

.field public f:Landroid/content/BroadcastReceiver;

.field public final g:Lcom/google/android/gms/internal/ads/zzavu;

.field public h:Ljava/lang/ref/WeakReference;

.field public i:Ljava/lang/ref/WeakReference;

.field public j:Lxre;

.field public k:B

.field public l:I

.field public m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/f0;->n:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/f0;->k:B

    iput v0, p0, Lcom/google/android/gms/internal/ads/f0;->l:I

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f0;->m:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f0;->g:Lcom/google/android/gms/internal/ads/zzavu;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f0;->d:Landroid/os/PowerManager;

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f0;->e:Landroid/app/KeyguardManager;

    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f0;->c:Landroid/app/Application;

    new-instance p2, Lxre;

    check-cast p1, Landroid/app/Application;

    invoke-direct {p2, p1, p0}, Lxre;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f0;->j:Lxre;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f0;->d(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/f0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/f0;->m:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f0;->m:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/f0;->m:J

    return-wide v0
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f0;->i:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f0;->i(Landroid/view/View;)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f0;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f0;->h(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-wide/16 v0, -0x2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f0;->m:J

    return-void

    :cond_3
    const-wide/16 v0, -0x3

    goto :goto_0
.end method

.method public final e(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f0;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/f0;->l:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f0;->i:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->b()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const-wide/16 v3, -0x3

    if-nez v1, :cond_1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/f0;->m:J

    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/f0;->k:B

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v7

    if-nez v7, :cond_3

    or-int/lit8 v5, v5, 0x2

    :cond_3
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/f0;->d:Landroid/os/PowerManager;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-nez v7, :cond_4

    or-int/lit8 v5, v5, 0x4

    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/f0;->g:Lcom/google/android/gms/internal/ads/zzavu;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzavu;->a()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/f0;->e:Landroid/app/KeyguardManager;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Ljse;->a:[C

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_5

    move-object v7, v1

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    :goto_1
    instance-of v8, v7, Landroid/content/ContextWrapper;

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    const/16 v8, 0xa

    if-ge v6, v8, :cond_7

    instance-of v8, v7, Landroid/app/Activity;

    if-eqz v8, :cond_6

    check-cast v7, Landroid/app/Activity;

    goto :goto_2

    :cond_6
    check-cast v7, Landroid/content/ContextWrapper;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    add-int/2addr v6, v0

    goto :goto_1

    :cond_7
    move-object v7, v9

    :goto_2
    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_a

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v0, v6

    if-nez v0, :cond_b

    :cond_a
    :goto_4
    or-int/lit8 v5, v5, 0x8

    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_c

    or-int/lit8 v5, v5, 0x10

    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_d

    or-int/lit8 v5, v5, 0x20

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/f0;->l:I

    if-eq v1, v2, :cond_e

    move v0, v1

    :cond_e
    if-eqz v0, :cond_f

    or-int/lit8 v5, v5, 0x40

    :cond_f
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/f0;->k:B

    if-eq v0, v5, :cond_11

    int-to-byte v0, v5

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/f0;->k:B

    if-nez v5, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_5

    :cond_10
    int-to-long v0, v5

    sub-long v0, v3, v0

    :goto_5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f0;->m:J

    :cond_11
    :goto_6
    return-void
.end method

.method public final g()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/f0;->n:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzawg;-><init>(Lcom/google/android/gms/internal/ads/f0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f0;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f0;->f:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Llse;

    invoke-direct {v0, p0}, Llse;-><init>(Lcom/google/android/gms/internal/ads/f0;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f0;->f:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f0;->b:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f0;->c:Landroid/app/Application;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f0;->j:Lxre;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f0;->h:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f0;->h:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f0;->f:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f0;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f0;->f:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f0;->c:Landroid/app/Application;

    if-eqz p1, :cond_4

    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f0;->j:Lxre;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/f0;->e(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/f0;->e(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/f0;->e(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->g()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/f0;->e(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/f0;->l:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f0;->h(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/f0;->l:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->g()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f0;->i(Landroid/view/View;)V

    return-void
.end method
