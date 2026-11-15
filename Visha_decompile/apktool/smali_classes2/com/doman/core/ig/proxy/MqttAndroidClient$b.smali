.class final Lcom/doman/core/ig/proxy/MqttAndroidClient$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/MqttAndroidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/MqttAndroidClient;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    instance-of p1, p2, Lcom/doman/core/ig/proxy/g;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$b;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    check-cast p2, Lcom/doman/core/ig/proxy/g;

    iget-object p2, p2, Lcom/doman/core/ig/proxy/g;->a:Lcom/doman/core/ig/proxy/MqttService;

    invoke-static {p1, p2}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lcom/doman/core/ig/proxy/MqttService;)Lcom/doman/core/ig/proxy/MqttService;

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$b;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lcom/doman/core/ig/proxy/MqttAndroidClient;)Z

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$b;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    invoke-static {p0}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->b(Lcom/doman/core/ig/proxy/MqttAndroidClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttAndroidClient$b;->a:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lcom/doman/core/ig/proxy/MqttService;)Lcom/doman/core/ig/proxy/MqttService;

    return-void
.end method
