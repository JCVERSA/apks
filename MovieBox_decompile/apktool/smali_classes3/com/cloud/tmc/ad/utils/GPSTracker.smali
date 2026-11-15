.class public Lcom/cloud/tmc/ad/utils/GPSTracker;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static accu:I = 0x0

.field private static coordTime:J = 0x0L

.field private static coordTimeStr:Ljava/lang/String; = ""

.field private static latitude:D

.field private static location:Landroid/location/Location;

.field private static longitude:D

.field private static final mFailTimes:Ljava/util/concurrent/atomic/AtomicInteger;


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
    sput-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->mFailTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLocation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static checkNeedRetry()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->latitude:D

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
    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->longitude:D

    .line 10
    .line 11
    cmpl-double v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->mFailTimes:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public static getAccu()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->accu:I

    .line 5
    .line 6
    return v0
.end method

.method public static getCoordTime()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTime:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public static getCoordTimeStr()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTimeStr:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public static getLatitude()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->latitude:D

    .line 5
    .line 6
    return-wide v0
.end method

.method private static getLocation()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const-string v0, "ssp"

    .line 2
    .line 3
    const-string v1, "network"

    .line 4
    .line 5
    const-string v2, "gps"

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "location"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/location/LocationManager;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sput-object v2, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateGPSCoordinates(Landroid/location/Location;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    if-eqz v5, :cond_2

    .line 50
    .line 51
    sget-object v2, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    const-string v2, "Positioning through the network"

    .line 56
    .line 57
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sput-object v1, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateGPSCoordinates(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    const-string v1, "Location Impossible to connect to LocationManager"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    sget-object v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->location:Landroid/location/Location;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-static {v0}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateGPSCoordinates(Landroid/location/Location;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public static getLongitude()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->updateLocation()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->longitude:D

    .line 5
    .line 6
    return-wide v0
.end method

.method private static updateGPSCoordinates(Landroid/location/Location;)V
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
    sput-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->latitude:D

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->longitude:D

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
    sput v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->accu:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sput-wide v0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTime:J

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
    sget-wide v1, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTime:J

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
    sput-object p0, Lcom/cloud/tmc/ad/utils/GPSTracker;->coordTimeStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    const-string v0, "ad"

    .line 51
    .line 52
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    :goto_0
    return-void
.end method

.method private static updateLocation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->checkNeedRetry()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/tmc/ad/utils/GPSTracker;->getLocation()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
