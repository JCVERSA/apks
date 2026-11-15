.class public abstract Ltech/palm/lib/utils/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/palm/lib/utils/AdvertisingIdClient$b;,
        Ltech/palm/lib/utils/AdvertisingIdClient$AdvertisingInterface;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Ltech/palm/lib/utils/AdvertisingIdClient$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/palm/lib/utils/AdvertisingIdClient$b;-><init>(Ltech/palm/lib/utils/AdvertisingIdClient$a;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ltech/palm/lib/utils/AdvertisingIdClient$AdvertisingInterface;

    invoke-virtual {v0}, Ltech/palm/lib/utils/AdvertisingIdClient$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Ltech/palm/lib/utils/AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1}, Ltech/palm/lib/utils/AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call in the main thread, You must call in the other thread"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
