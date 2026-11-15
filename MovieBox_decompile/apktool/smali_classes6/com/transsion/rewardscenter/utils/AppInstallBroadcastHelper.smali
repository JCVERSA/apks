.class public final Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;

.field private static b:Landroid/content/BroadcastReceiver;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;->a:Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    sput v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;->c:I

    .line 11
    .line 12
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


# virtual methods
.method public final a(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    sget-object v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;->b:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 47
    .line 48
    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;->b:Landroid/content/BroadcastReceiver;

    .line 51
    .line 52
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    .line 54
    new-instance v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper$registerAppInstallReceiver$2$receiver$1;

    .line 55
    .line 56
    invoke-direct {v0, p2}, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper$registerAppInstallReceiver$2$receiver$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Landroid/content/IntentFilter;

    .line 60
    .line 61
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "package"

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    sput-object v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;->b:Landroid/content/BroadcastReceiver;

    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :goto_2
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

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
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :goto_0
    sget-object v0, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;->b:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_1
    const/4 p1, 0x0

    .line 40
    sput-object p1, Lcom/transsion/rewardscenter/utils/AppInstallBroadcastHelper;->b:Landroid/content/BroadcastReceiver;

    .line 41
    .line 42
    :cond_1
    return-void
.end method
