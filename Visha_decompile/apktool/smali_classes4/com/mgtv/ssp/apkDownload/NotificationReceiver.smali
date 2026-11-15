.class public Lcom/mgtv/ssp/apkDownload/NotificationReceiver;
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
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "notificationType"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "notificationURL"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notificationUUID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fznotificationID"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "ssp.notification.apk.download.delete"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0x65

    const/16 v5, 0x64

    if-eqz v1, :cond_1

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgtv/ssp/apkDownload/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgtv/ssp/apkDownload/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "ssp.notification.apk.download.click"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgtv/ssp/apkDownload/b;->a(Ljava/lang/String;)Lcom/mgtv/ssp/apkDownload/e;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/ssp/apkDownload/e;->c()V

    :cond_3
    invoke-static {}, Lcom/mgtv/ssp/apkDownload/b;->a()Lcom/mgtv/ssp/apkDownload/b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgtv/ssp/apkDownload/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/d;->a()Lcom/mgtv/ssp/apkDownload/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/mgtv/ssp/apkDownload/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/mgtv/ssp/apkDownload/d;->a()Lcom/mgtv/ssp/apkDownload/d;

    move-result-object p0

    invoke-virtual {p0, p1, v3, v2, p2}, Lcom/mgtv/ssp/apkDownload/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method
