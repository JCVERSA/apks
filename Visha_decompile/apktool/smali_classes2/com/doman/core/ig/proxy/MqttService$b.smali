.class final Lcom/doman/core/ig/proxy/MqttService$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/MqttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/MqttService;


# direct methods
.method private constructor <init>(Lcom/doman/core/ig/proxy/MqttService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/doman/core/ig/proxy/MqttService;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttService$b;-><init>(Lcom/doman/core/ig/proxy/MqttService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    const-string p1, "MqttService"

    :try_start_0
    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    const-string v0, "Internal network status receive."

    invoke-virtual {p2, p1, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const-string v0, "MQTT"

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    const-string v1, "Reconnect for Network recovery."

    invoke-virtual {v0, p1, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {v0}, Lcom/doman/core/ig/proxy/MqttService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    const-string v1, "Online,reconnect."

    invoke-virtual {v0, p1, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/MqttService;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService$b;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-static {p0}, Lcom/doman/core/ig/proxy/MqttService;->a(Lcom/doman/core/ig/proxy/MqttService;)V

    :goto_0
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
