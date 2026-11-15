.class public final Lvue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final b:Landroid/app/Application;

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvue;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvue;->c:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lvue;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a(Luue;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lvue;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Luue;->a(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lvue;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lvue;->b:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lvue;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Error while dispatching lifecycle callback."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lnue;

    invoke-direct {v0, p0, p1, p2}, Lnue;-><init>(Lvue;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lvue;->a(Luue;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ltue;

    invoke-direct {v0, p0, p1}, Ltue;-><init>(Lvue;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lvue;->a(Luue;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lque;

    invoke-direct {v0, p0, p1}, Lque;-><init>(Lvue;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lvue;->a(Luue;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lpue;

    invoke-direct {v0, p0, p1}, Lpue;-><init>(Lvue;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lvue;->a(Luue;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lsue;

    invoke-direct {v0, p0, p1, p2}, Lsue;-><init>(Lvue;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lvue;->a(Luue;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Loue;

    invoke-direct {v0, p0, p1}, Loue;-><init>(Lvue;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lvue;->a(Luue;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lrue;

    invoke-direct {v0, p0, p1}, Lrue;-><init>(Lvue;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lvue;->a(Luue;)V

    return-void
.end method
