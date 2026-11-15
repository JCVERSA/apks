.class public Lcom/transsion/playercommon/widgets/HeadsetHelper$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/HeadsetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/HeadsetHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/HeadsetHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "state"

    const-string v0, "visha_HeadsetHelper"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p0

    sget-object p1, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;->IN:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;->k(Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;)V

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p0

    sget-object p1, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;->OUT:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;->k(Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;)V

    goto :goto_1

    :cond_1
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "\u84dd\u7259\u8033\u673a\u8fde\u63a5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p0

    sget-object p1, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;->IN:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;->k(Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/HeadsetHelper$a;->a:Lcom/transsion/playercommon/widgets/HeadsetHelper;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/HeadsetHelper;->a(Lcom/transsion/playercommon/widgets/HeadsetHelper;)Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;

    move-result-object p0

    sget-object p1, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;->OUT:Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/widgets/HeadsetHelper$Status;->k(Lcom/transsion/playercommon/widgets/HeadsetHelper$Status$Sta;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBroadcastReceiver onReceive "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
