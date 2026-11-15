.class public abstract Lcom/cloud/sdk/commonutil/util/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Landroid/location/Location; = null

.field private static b:D = 0.0

.field private static c:D = 0.0

.field private static d:I = 0x0

.field private static e:J = 0x0L

.field private static f:Ljava/lang/String; = ""

.field private static final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/sdk/commonutil/util/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method private static a()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->b:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmpl-double v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->c:D

    .line 10
    .line 11
    cmpl-double v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/cloud/sdk/commonutil/util/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-gt v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1
.end method

.method public static b()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->e:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/sdk/commonutil/util/d;->f:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public static d()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->b:D

    .line 5
    .line 6
    return-wide v0
.end method

.method private static e()V
    .locals 5

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    const-string v1, "gps"

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "location"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/location/LocationManager;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/d;->g(Landroid/location/Location;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    if-eqz v4, :cond_2

    .line 48
    .line 49
    sget-object v1, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/d;->g(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "ssp"

    .line 68
    .line 69
    const-string v2, "Location Impossible to connect to LocationManager"

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/d;->a:Landroid/location/Location;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/d;->g(Landroid/location/Location;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public static f()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->h()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/cloud/sdk/commonutil/util/d;->c:D

    .line 5
    .line 6
    return-wide v0
.end method

.method private static g(Landroid/location/Location;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/cloud/sdk/commonutil/util/d;->b:D

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Lcom/cloud/sdk/commonutil/util/d;->c:D

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    float-to-int v0, v0

    .line 20
    sput v0, Lcom/cloud/sdk/commonutil/util/d;->d:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sput-wide v0, Lcom/cloud/sdk/commonutil/util/d;->e:J

    .line 27
    .line 28
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 29
    .line 30
    const-string v0, "yyyy-MM-dd HH:mm:ss SSS Z"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/util/Date;

    .line 36
    .line 37
    sget-wide v1, Lcom/cloud/sdk/commonutil/util/d;->e:J

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sput-object p0, Lcom/cloud/sdk/commonutil/util/d;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    :goto_0
    return-void
.end method

.method private static h()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/d;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
