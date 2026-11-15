.class abstract Lcom/transsion/core/deviceinfo/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/core/deviceinfo/a$d;,
        Lcom/transsion/core/deviceinfo/a$c;,
        Lcom/transsion/core/deviceinfo/a$b;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Lcom/transsion/core/deviceinfo/a$b;
    .locals 5

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
    if-eq v0, v1, :cond_1

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
    new-instance v0, Lcom/transsion/core/deviceinfo/a$c;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Lcom/transsion/core/deviceinfo/a$c;-><init>(Lcom/transsion/core/deviceinfo/a$a;)V

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
    if-eqz v1, :cond_0

    .line 45
    .line 46
    :try_start_0
    new-instance v1, Lcom/transsion/core/deviceinfo/a$d;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/core/deviceinfo/a$c;->a()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v1, v3}, Lcom/transsion/core/deviceinfo/a$d;-><init>(Landroid/os/IBinder;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lcom/transsion/core/deviceinfo/a$b;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/transsion/core/deviceinfo/a$d;->getId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1, v2}, Lcom/transsion/core/deviceinfo/a$d;->isLimitAdTrackingEnabled(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-direct {v3, v4, v1}, Lcom/transsion/core/deviceinfo/a$b;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 81
    .line 82
    const-string v0, "Google Play connection failed"

    .line 83
    .line 84
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string v0, "Cannot be called from the main thread"

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method
