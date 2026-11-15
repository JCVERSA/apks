.class public final Lcom/transsion/wrapperad/install/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/f;


# static fields
.field public static final a:Lcom/transsion/wrapperad/install/b;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/wrapperad/install/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/wrapperad/install/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/wrapperad/install/b;->a:Lcom/transsion/wrapperad/install/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/wrapperad/install/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final c()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/transsion/wrapperad/install/AppChangeReceiver;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/wrapperad/install/AppChangeReceiver;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    .line 12
    .line 13
    new-instance v0, Landroid/content/IntentFilter;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "package"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v2, 0x21

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    const-string v4, "appContext"

    .line 44
    .line 45
    if-lt v1, v2, :cond_2

    .line 46
    .line 47
    sget-object v1, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v3, v1

    .line 56
    :goto_0
    sget-object v1, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    .line 57
    .line 58
    const/4 v2, 0x4

    .line 59
    invoke-static {v3, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    sget-object v1, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move-object v3, v1

    .line 72
    :goto_1
    sget-object v1, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    .line 73
    .line 74
    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    :goto_2
    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    .line 79
    .line 80
    return-void
.end method

.method private final d()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :try_start_0
    sget-object v2, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    const-string v2, "appContext"

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object v2, v1

    .line 21
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_2
    sput-object v1, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Application;)V
    .locals 2

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sput-object p1, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    .line 11
    .line 12
    sget-object p1, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " --> init() --> \u521d\u59cb\u5316\u6210\u529f"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStart(Landroidx/lifecycle/u;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->d()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
