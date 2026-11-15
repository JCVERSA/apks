.class final Lcom/doman/core/manager/time/KeepAppLifeService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/manager/time/KeepAppLifeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/manager/time/KeepAppLifeService;


# direct methods
.method public constructor <init>(Lcom/doman/core/manager/time/KeepAppLifeService;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/manager/time/KeepAppLifeService$1;->a:Lcom/doman/core/manager/time/KeepAppLifeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Lcom/doman/core/manager/time/KeepAppLifeService;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/doman/core/manager/time/KeepAppLifeService$1;->a:Lcom/doman/core/manager/time/KeepAppLifeService;

    invoke-static {p2}, Lcom/doman/core/manager/time/KeepAppLifeService;->a(Lcom/doman/core/manager/time/KeepAppLifeService;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeepAppLifeService ss on@1"

    invoke-static {p2, v0}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/doman/core/manager/time/KeepAppLifeService$1;->a:Lcom/doman/core/manager/time/KeepAppLifeService;

    invoke-virtual {p0, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/doman/core/manager/time/KeepAppLifeService$1;->a:Lcom/doman/core/manager/time/KeepAppLifeService;

    invoke-static {p2}, Lcom/doman/core/manager/time/KeepAppLifeService;->a(Lcom/doman/core/manager/time/KeepAppLifeService;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeepAppLifeService ss on@2"

    invoke-static {p2, v0}, Lcom/doman/core/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/doman/core/manager/time/KeepAppLifeService$1;->a:Lcom/doman/core/manager/time/KeepAppLifeService;

    invoke-virtual {p0, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method
