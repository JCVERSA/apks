.class final Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeTickBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkRunnable(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$200()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$302(I)I

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$400(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$100()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$302(I)I

    invoke-static {p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$500(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$100()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$100()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeWorkRunnable(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$200()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;->access$200()Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusUtils;->removeWorkRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$TimeTickBroadcastReceiver;->checkRunnable(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return-void
.end method
