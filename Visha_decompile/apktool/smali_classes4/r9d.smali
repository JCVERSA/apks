.class public Lr9d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr9d$a;
    }
.end annotation


# instance fields
.field public b:Z

.field public c:Z

.field public d:Lr9d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public b(Lr9d$a;)V
    .locals 0

    iput-object p1, p0, Lr9d;->d:Lr9d$a;

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Lr9d;->c:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lr9d;->c:Z

    iget-boolean v0, p0, Lr9d;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lr9d;->f(Z)V

    iget-object p0, p0, Lr9d;->d:Lr9d$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lr9d$a;->a(Z)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 2

    invoke-virtual {p0}, Lr9d;->e()Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr9d;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public e()Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 0

    new-instance p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {p0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    return-object p0
.end method

.method public f(Z)V
    .locals 0

    return-void
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lr9d;->c:Z

    return p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr9d;->b:Z

    invoke-virtual {p0}, Lr9d;->d()Z

    move-result v0

    iput-boolean v0, p0, Lr9d;->c:Z

    invoke-virtual {p0, v0}, Lr9d;->f(Z)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr9d;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lr9d;->d:Lr9d$a;

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr9d;->c(Z)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lr9d;->d()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr9d;->c(Z)V

    return-void
.end method
