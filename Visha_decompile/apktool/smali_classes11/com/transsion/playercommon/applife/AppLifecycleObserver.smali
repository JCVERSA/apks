.class public Lcom/transsion/playercommon/applife/AppLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;
    }
.end annotation


# static fields
.field public static e:Lcom/transsion/playercommon/applife/AppLifecycleObserver;


# instance fields
.field public final b:Landroid/app/Application;

.field public c:Z

.field public d:Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->c:Z

    iput-object p1, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->b:Landroid/app/Application;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppLifecycleObserver: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLifecycleObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a()Lcom/transsion/playercommon/applife/AppLifecycleObserver;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->e:Lcom/transsion/playercommon/applife/AppLifecycleObserver;

    return-object v0
.end method

.method public static b(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->e:Lcom/transsion/playercommon/applife/AppLifecycleObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/applife/AppLifecycleObserver;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->e:Lcom/transsion/playercommon/applife/AppLifecycleObserver;

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    sget-object v0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->e:Lcom/transsion/playercommon/applife/AppLifecycleObserver;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-string p0, "AppLifecycleObserver"

    const-string v0, "AppLifecycleObserver initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    const-string v0, "App went to background, recording exit time"

    const-string v1, "AppLifecycleObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->d:Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppBackground callback error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-boolean p1, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->c:Z

    const-string v0, "App entered foreground"

    const-string v1, "AppLifecycleObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->d:Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppForeground callback error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->c:Z

    const-string p1, "AppLifecycleObserver"

    const-string v0, "App entered background"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->c()V

    return-void
.end method

.method public setOnAppStateListener(Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/applife/AppLifecycleObserver;->d:Lcom/transsion/playercommon/applife/AppLifecycleObserver$a;

    return-void
.end method
