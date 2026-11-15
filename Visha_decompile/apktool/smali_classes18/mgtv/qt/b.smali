.class public final Lmgtv/qt/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lmgtv/qt/c;->l:I

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    const-string p1, ""

    sput-object p1, Ls3d;->a:Ljava/lang/String;

    new-instance p1, Lmgtv/qt/ae;

    invoke-direct {p1, p0}, Lmgtv/qt/ae;-><init>(Lmgtv/qt/b;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lmgtv/qt/j;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    const/4 p0, 0x1

    sput p0, Lmgtv/qt/c;->l:I

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Ls3d;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ls3d;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ls3d;->a(J)J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lhld;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u5230\u524d\u53f0 ActivityName: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ls3d;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmgtv/qt/c;->f(Ljava/lang/String;)V

    new-instance p0, Ls4d;

    invoke-static {}, Ls3d;->c()J

    move-result-wide v0

    sget-object p1, Ls3d;->a:Ljava/lang/String;

    const-string v2, "0"

    invoke-direct {p0, v0, v1, p1, v2}, Ls4d;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lmgtv/qt/c;->k:Landroid/app/Application;

    invoke-static {p1, p0}, Lmgtv/qt/c;->c(Landroid/app/Application;Ls4d;)V

    invoke-static {}, Lmgtv/qt/c;->m()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ls4d;

    invoke-static {}, Ls3d;->c()J

    move-result-wide v1

    sget-object v3, Ls3d;->a:Ljava/lang/String;

    const-string v4, "0.1"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls4d;-><init>(JLjava/lang/String;Ljava/lang/String;B)V

    sget-object p1, Lmgtv/qt/c;->k:Landroid/app/Application;

    invoke-static {p1, p0}, Lmgtv/qt/c;->c(Landroid/app/Application;Ls4d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
