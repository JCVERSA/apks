.class Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/OxygenBusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OxygenbusBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mLifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    return-void
.end method


# virtual methods
.method public listen()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    const-string v0, "com.transsion.kolun.aiservice"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OxygenbusBroadcastReceiver receive action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OxygenBusService"

    invoke-static {p2, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mLifecycle:Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;

    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$BusServiceLifecycle;->startListen()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unListen()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$OxygenbusBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
