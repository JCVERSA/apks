.class public final Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;-><init>(Landroid/content/Context;Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/shorttv/base/util/DeviceKeyMonitor$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$1;->a:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p1, "reason"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string p1, ""

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const v0, -0x53ef7d97

    .line 39
    .line 40
    .line 41
    if-eq p2, v0, :cond_5

    .line 42
    .line 43
    const v0, 0x14e36b4d

    .line 44
    .line 45
    .line 46
    if-eq p2, v0, :cond_4

    .line 47
    .line 48
    const v0, 0x41218920

    .line 49
    .line 50
    .line 51
    if-eq p2, v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p2, "homekey"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$1;->a:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->a(Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;)Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;->onHomeClick()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const-string p2, "recentapps"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const-string p2, "assist"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$1;->a:Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;->a(Lcom/transsion/shorttv/base/util/DeviceKeyMonitor;)Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Lcom/transsion/shorttv/base/util/DeviceKeyMonitor$b;->onRecentClick()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
