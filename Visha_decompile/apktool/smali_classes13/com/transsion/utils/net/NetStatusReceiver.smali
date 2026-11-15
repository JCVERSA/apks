.class public Lcom/transsion/utils/net/NetStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Lvz6;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    iget-object p0, p0, Lcom/transsion/utils/net/NetStatusReceiver;->a:Lvz6;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lvz6;->unknowNet()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/utils/net/NetStatusReceiver;->a:Lvz6;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lvz6;->onConnect(I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/utils/net/NetStatusReceiver;->a:Lvz6;

    if-eqz p0, :cond_3

    invoke-static {p1}, Lpz6;->a(Landroid/content/Context;)I

    move-result p1

    invoke-interface {p0, p1}, Lvz6;->onConnect(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/utils/net/NetStatusReceiver;->a:Lvz6;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lvz6;->onDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetStatusReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
