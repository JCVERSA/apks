.class public Lq4d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq4d;->a:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p2, p0, Lq4d;->a:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq4d;->a:Z

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lo3d;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/anehat;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->b0()V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->D()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    const-string p0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, p0}, Lcom/transsion/athena/taaneh/a;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, p0}, Lcom/transsion/athena/taaneh/a;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "location"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string p1, "gps"

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "network"

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p0, 0x270f

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    const/16 p1, 0x1f6

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->k(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
