.class public Lcom/transsion/gslb/misc/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingInterface;,
        Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingConnection;,
        Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "com.android.vending"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingConnection;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/transsion/gslb/misc/AdvertisingIdClient$1;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "com.google.android.gms"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    new-instance v3, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingInterface;

    .line 53
    .line 54
    invoke-direct {v3, v1}, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v2}, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-direct {v1, v4, v2}, Lcom/transsion/gslb/misc/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :goto_0
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_1
    :goto_2
    new-instance p0, Ljava/io/IOException;

    .line 88
    .line 89
    const-string v0, "Google Play connection failed"

    .line 90
    .line 91
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    const-string v0, "Cannot be called from the main thread"

    .line 98
    .line 99
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method
