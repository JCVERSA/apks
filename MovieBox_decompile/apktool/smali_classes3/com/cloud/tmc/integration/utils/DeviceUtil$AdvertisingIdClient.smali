.class final Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/utils/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingIdClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;,
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;,
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;",
        "",
        "()V",
        "getAdvertisingIdInfo",
        "Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;",
        "context",
        "Landroid/content/Context;",
        "AdInfo",
        "AdvertisingConnection",
        "AdvertisingInterface",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getAdvertisingIdInfo(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "com.android.vending"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    .line 38
    .line 39
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "com.google.android.gms"

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;

    .line 55
    .line 56
    const-string v4, ""

    .line 57
    .line 58
    invoke-direct {v1, v4, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    :try_start_0
    new-instance v1, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;

    .line 68
    .line 69
    invoke-direct {v1, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-direct {v2, v4, v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    .line 87
    .line 88
    move-object v1, v2

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    .line 96
    .line 97
    throw v1

    .line 98
    :cond_0
    :goto_1
    return-object v1

    .line 99
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 100
    .line 101
    const-string v0, "Google Play connection failed"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    const-string v0, "Cannot be called from the main thread"

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1
.end method
