.class public final Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$a;,
        Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;

.field private final c:Ljava/lang/String;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->e:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->b:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;

    .line 17
    .line 18
    const-string p2, "DeviceKeyMonitor"

    .line 19
    .line 20
    iput-object p2, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->c:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p2, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$1;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$1;-><init>(Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->d:Landroid/content/BroadcastReceiver;

    .line 28
    .line 29
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    const/16 v1, 0x21

    .line 34
    .line 35
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 36
    .line 37
    if-lt v0, v1, :cond_0

    .line 38
    .line 39
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 53
    .line 54
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :goto_2
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;)Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->b:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->d:Landroid/content/BroadcastReceiver;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->d:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :goto_2
    return-void
.end method
