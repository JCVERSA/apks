.class public Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$a;,
        Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;
    }
.end annotation


# static fields
.field public static j:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$a;

.field public static k:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;


# instance fields
.field public b:Landroid/os/Handler;

.field public c:I

.field public d:Z

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->f:I

    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->g:Ljava/lang/String;

    iput v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->h:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->d:Z

    return-void
.end method

.method public static setOnActivityDestroyedListener(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$a;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->j:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$a;

    return-void
.end method

.method public static setOnActivityResumedListener(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->k:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;

    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)Z
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    if-gt v0, v1, :cond_1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez p1, :cond_1

    if-gt p1, v1, :cond_1

    return p0

    :cond_1
    return v1

    :cond_2
    return p0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "AppActivityLifecycleCallback"

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->c:I

    if-gt v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->d:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lvv7;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lvv7;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityStarted : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "pageame"

    invoke-virtual {p1, v2, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    const-string v1, "from"

    iget-object v2, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    const-string v1, "type"

    iget v2, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->h:I

    invoke-virtual {p1, v1, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    iget v1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->h:I

    if-nez v1, :cond_1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->h:I

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v1, "visha_page_enter"

    const-wide/16 v2, 0x246c

    invoke-static {p1, v1, v2, v3}, Lp06;->p0(Lcom/transsion/athena/data/TrackData;Ljava/lang/String;J)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->d:Z

    iget-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->e:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->e:Ljava/lang/Runnable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    sget-object p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->j:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$a;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_0
    sget-object p0, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p1}, Lm27;->e(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->i:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$1;-><init>(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;)V

    iput-object v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityStopped "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppActivityLifecycleCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->i:Ljava/lang/Runnable;

    :cond_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/transsion/playercommon/core/MainApp;->E:Ljava/lang/ref/WeakReference;

    sget-object p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->k:Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$b;->onActivityResumed(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->c:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->e:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->b:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$2;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback$2;-><init>(Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;)V

    iput-object v0, p0, Lcom/transsion/playercommon/callback/AppActivityLifecycleCallback;->e:Ljava/lang/Runnable;

    invoke-static {}, Lvv7;->b()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityStopped "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppActivityLifecycleCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method
