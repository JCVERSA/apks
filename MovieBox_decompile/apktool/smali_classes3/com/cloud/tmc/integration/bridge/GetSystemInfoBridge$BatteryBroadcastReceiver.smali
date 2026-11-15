.class Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;


# direct methods
.method private constructor <init>(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;Lcom/cloud/tmc/integration/bridge/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;-><init>(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->d(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;Landroid/content/Intent;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    .line 10
    .line 11
    invoke-static {v0, p2}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->c(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p2, v0}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->b(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p2, "ACTION_BATTERY_CHANGED..."

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$BatteryBroadcastReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;->a(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "GetSystemInfoBridge"

    .line 47
    .line 48
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
