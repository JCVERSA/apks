.class public Lcn/com/custommma/mobile/tracking/util/LocationCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

.field public static i:Landroid/os/Handler;


# instance fields
.field public a:Landroid/location/LocationManager;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:J

.field public e:Landroid/location/Location;

.field public f:Landroid/location/LocationListener;

.field public final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->d:J

    new-instance v0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$a;

    invoke-direct {v0, p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector$a;-><init>(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)V

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->f:Landroid/location/LocationListener;

    new-instance v0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;

    invoke-direct {v0, p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;-><init>(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)V

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->g:Ljava/lang/Runnable;

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->e:Landroid/location/Location;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->a:Landroid/location/LocationManager;

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->i:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcn/com/custommma/mobile/tracking/util/LocationCollector;J)J
    .locals 0

    iput-wide p1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->d:J

    return-wide p1
.end method

.method public static synthetic b(Lcn/com/custommma/mobile/tracking/util/LocationCollector;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->e:Landroid/location/Location;

    return-object p1
.end method

.method public static synthetic c(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)Landroid/location/LocationListener;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->f:Landroid/location/LocationListener;

    return-object p0
.end method

.method public static synthetic d(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->a:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static synthetic e(Lcn/com/custommma/mobile/tracking/util/LocationCollector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->c:Z

    return p1
.end method

.method public static synthetic f(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/util/LocationCollector;
    .locals 2

    sget-object v0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    if-nez v0, :cond_1

    const-class v0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    if-nez v1, :cond_0

    new-instance v1, Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-direct {v1, p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    return-object p0
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "x"

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->e:Landroid/location/Location;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->j()V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->d:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->j()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->e:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()V
    .locals 0

    return-void
.end method
