.class final Lcom/doman/core/ig/proxy/MqttService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/MqttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/MqttService;


# direct methods
.method private constructor <init>(Lcom/doman/core/ig/proxy/MqttService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/doman/core/ig/proxy/MqttService;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/doman/core/ig/proxy/MqttService$a;-><init>(Lcom/doman/core/ig/proxy/MqttService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    const-string v0, "MqttService"

    const-string v1, "Reconnect since BroadcastReceiver."

    invoke-virtual {p2, v0, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/MqttService;->b(Lcom/doman/core/ig/proxy/MqttService;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/doman/core/ig/proxy/MqttService;->a(Lcom/doman/core/ig/proxy/MqttService;Z)Z

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/MqttService;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/doman/core/ig/proxy/MqttService;->a(Lcom/doman/core/ig/proxy/MqttService;Z)Z

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService$a;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-static {p0}, Lcom/doman/core/ig/proxy/MqttService;->a(Lcom/doman/core/ig/proxy/MqttService;)V

    :cond_1
    return-void
.end method
