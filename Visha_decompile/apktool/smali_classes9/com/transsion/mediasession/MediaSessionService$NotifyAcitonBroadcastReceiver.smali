.class public Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediasession/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifyAcitonBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/mediasession/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "VishaMediaSessionService"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.transsion.play.notify.prev"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0, v1}, Lcom/transsion/mediasession/MediaSessionService;->G(Lcom/transsion/mediasession/MediaSessionService;Z)V

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.transsion.play.notify.next"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0, v1}, Lcom/transsion/mediasession/MediaSessionService;->F(Lcom/transsion/mediasession/MediaSessionService;Z)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "com.transsion.play.notify.play_state"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->D(Lcom/transsion/mediasession/MediaSessionService;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "com.transsion.play.notify.close"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->E(Lcom/transsion/mediasession/MediaSessionService;)V

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.MY_PACKAGE_SUSPENDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p2, v1}, Lcom/transsion/mediasession/MediaSessionService;->s(Lcom/transsion/mediasession/MediaSessionService;Z)V

    iget-object p2, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p2}, Lcom/transsion/mediasession/MediaSessionService;->n(Lcom/transsion/mediasession/MediaSessionService;)Lc37;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->n(Lcom/transsion/mediasession/MediaSessionService;)Lc37;

    move-result-object p0

    invoke-virtual {p0}, Lc37;->q()V

    goto :goto_1

    :cond_4
    const-string v0, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/transsion/mediasession/MediaSessionService;->s(Lcom/transsion/mediasession/MediaSessionService;Z)V

    goto :goto_1

    :cond_5
    const-string v0, "com.transsion.play.notify.favorite"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;->a:Lcom/transsion/mediasession/MediaSessionService;

    invoke-static {p0}, Lcom/transsion/mediasession/MediaSessionService;->C(Lcom/transsion/mediasession/MediaSessionService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NotifyAcitonBroadcastReceiver onReceive "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
