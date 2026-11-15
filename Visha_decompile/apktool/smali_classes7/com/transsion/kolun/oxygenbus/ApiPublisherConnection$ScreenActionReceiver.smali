.class Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenActionReceiver"
.end annotation


# instance fields
.field private isRegistered:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;->isRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->getInstance()Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;->access$1000(Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkRegister(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;->isRegistered:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/kolun/oxygenbus/ApiPublisherConnection$ScreenActionReceiver;->isRegistered:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/transsion/kolun/oxygenbus/b;

    invoke-direct {p1, p0}, Lcom/transsion/kolun/oxygenbus/b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->postWorkRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
