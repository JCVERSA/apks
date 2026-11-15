.class public Lcom/mgmi/notification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "notificationType"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "notificationURL"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "mgmi_notification.apk.download.delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lk7d;->m(Ljava/lang/String;)V

    invoke-static {p1}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lk7d;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "mgmi_notification.apk.download.click"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0xb902

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lk7d;->c(Landroid/content/Context;)Lk7d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lk7d;->l(Ljava/lang/String;)Ld6d;

    move-result-object p1

    invoke-virtual {p1}, Ld6d;->g()V

    invoke-virtual {p0, p2}, Lk7d;->m(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lk7d;->k(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb901
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
