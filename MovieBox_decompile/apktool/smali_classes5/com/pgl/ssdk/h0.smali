.class public Lcom/pgl/ssdk/h0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/h0$a;
    }
.end annotation


# static fields
.field private static final a:[F

.field public static b:Z = true

.field private static volatile c:Lcom/pgl/ssdk/h0;


# instance fields
.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/hardware/Sensor;

.field private f:Landroid/hardware/Sensor;

.field private volatile g:Z

.field private volatile h:Z

.field private final i:Landroid/content/Context;

.field private j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/pgl/ssdk/h0$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/pgl/ssdk/h0;->a:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x497423f0    # 999999.0f
        0x497423f0    # 999999.0f
        0x497423f0    # 999999.0f
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/pgl/ssdk/h0;->d:Landroid/hardware/Sensor;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/pgl/ssdk/h0;->e:Landroid/hardware/Sensor;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/pgl/ssdk/h0;->f:Landroid/hardware/Sensor;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/pgl/ssdk/h0;->g:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/pgl/ssdk/h0;->h:Z

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/pgl/ssdk/h0;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    const-wide/32 v0, 0xf423f

    .line 24
    .line 25
    .line 26
    iput-wide v0, p0, Lcom/pgl/ssdk/h0;->k:J

    .line 27
    .line 28
    iput-object p1, p0, Lcom/pgl/ssdk/h0;->i:Landroid/content/Context;

    .line 29
    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/pgl/ssdk/h0;
    .locals 2

    .line 1
    sget-object v0, Lcom/pgl/ssdk/h0;->c:Lcom/pgl/ssdk/h0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/pgl/ssdk/h0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/h0;->c:Lcom/pgl/ssdk/h0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/pgl/ssdk/h0;

    invoke-direct {v1, p0}, Lcom/pgl/ssdk/h0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pgl/ssdk/h0;->c:Lcom/pgl/ssdk/h0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-boolean p0, Lcom/pgl/ssdk/h0;->b:Z

    if-eqz p0, :cond_2

    .line 7
    sget-object p0, Lcom/pgl/ssdk/h0;->c:Lcom/pgl/ssdk/h0;

    invoke-direct {p0}, Lcom/pgl/ssdk/h0;->c()V

    .line 8
    :cond_2
    sget-object p0, Lcom/pgl/ssdk/h0;->c:Lcom/pgl/ssdk/h0;

    return-object p0
.end method

.method private static a([Ljava/lang/Object;)V
    .locals 2

    const v0, 0x497423f0    # 999999.0f

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    .line 10
    aput-object v0, p0, v1

    const/4 v1, 0x2

    .line 11
    aput-object v0, p0, v1

    const-wide/32 v0, 0xf423f

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    .line 13
    sget-object v0, Lcom/pgl/ssdk/h0;->a:[F

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const/4 v1, 0x5

    .line 14
    aput-object v0, p0, v1

    return-void
.end method

.method private static a([Ljava/lang/Object;Lcom/pgl/ssdk/h0$a;)V
    .locals 6

    .line 15
    iget-object v0, p1, Lcom/pgl/ssdk/h0$a;->b:[F

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 16
    iget-object v5, p1, Lcom/pgl/ssdk/h0$a;->c:[F

    if-eqz v5, :cond_0

    .line 17
    invoke-static {p0, v0, v5}, Lcom/pgl/ssdk/h0;->a([Ljava/lang/Object;[F[F)[F

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0, v0}, Lcom/pgl/ssdk/h0;->a([Ljava/lang/Object;[F)[F

    move-result-object v0

    .line 19
    :goto_0
    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, p0, v4

    .line 20
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, p0, v3

    .line 21
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p0, v2

    .line 22
    iget-object v0, p1, Lcom/pgl/ssdk/h0$a;->b:[F

    aput-object v0, p0, v1

    goto :goto_1

    :cond_1
    const v0, 0x497423f0    # 999999.0f

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, p0, v4

    .line 24
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, p0, v3

    .line 25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p0, v2

    .line 26
    sget-object v0, Lcom/pgl/ssdk/h0;->a:[F

    aput-object v0, p0, v1

    .line 27
    :goto_1
    iget-wide v0, p1, Lcom/pgl/ssdk/h0$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    .line 28
    iget-object p1, p1, Lcom/pgl/ssdk/h0$a;->d:[F

    const/4 v0, 0x5

    if-eqz p1, :cond_2

    .line 29
    aput-object p1, p0, v0

    return-void

    .line 30
    :cond_2
    sget-object p1, Lcom/pgl/ssdk/h0;->a:[F

    aput-object p1, p0, v0

    return-void
.end method

.method private static a([Ljava/lang/Object;[F)[F
    .locals 8

    const/4 p0, 0x0

    .line 40
    aget v0, p1, p0

    const/4 v1, 0x1

    .line 41
    aget v2, p1, v1

    const/4 v3, 0x2

    .line 42
    aget p1, p1, v3

    mul-float v4, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, p1, p1

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    mul-float/2addr v0, v5

    mul-float/2addr v2, v5

    mul-float/2addr p1, v5

    neg-float v2, v2

    float-to-double v4, v2

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v2, v4

    neg-float v0, v0

    float-to-double v4, v0

    float-to-double v6, p1

    .line 45
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float p1, v4

    float-to-double v4, v2

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v0, v2

    rem-float/2addr v0, v2

    float-to-double v4, p1

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float p1, v4

    add-float/2addr p1, v2

    rem-float/2addr p1, v2

    const/4 v2, 0x3

    .line 48
    new-array v2, v2, [F

    const v4, 0x497423f0    # 999999.0f

    aput v4, v2, p0

    aput v0, v2, v1

    aput p1, v2, v3

    return-object v2
.end method

.method private static a([Ljava/lang/Object;[F[F)[F
    .locals 7

    const/16 p0, 0x9

    .line 31
    new-array v0, p0, [F

    .line 32
    new-array p0, p0, [F

    const/4 v1, 0x3

    .line 33
    new-array v2, v1, [F

    .line 34
    invoke-static {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 35
    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 p0, 0x0

    .line 36
    aget p1, v2, p0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x43b40000    # 360.0f

    add-float/2addr p1, p2

    rem-float/2addr p1, p2

    const/4 v0, 0x1

    .line 37
    aget v3, v2, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v3, p2

    rem-float/2addr v3, p2

    const/4 v4, 0x2

    .line 38
    aget v2, v2, v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v2, v5

    add-float/2addr v2, p2

    rem-float/2addr v2, p2

    .line 39
    new-array p2, v1, [F

    aput p1, p2, p0

    aput v3, p2, v0

    aput v2, p2, v4

    return-object p2
.end method

.method private c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/pgl/ssdk/h0;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/pgl/ssdk/h0;->i:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "sensor"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/hardware/SensorManager;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/pgl/ssdk/h0;->d:Landroid/hardware/Sensor;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/pgl/ssdk/h0;->e:Landroid/hardware/Sensor;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/pgl/ssdk/h0;->f:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    :catch_0
    :cond_1
    iput-boolean v0, p0, Lcom/pgl/ssdk/h0;->h:Z

    .line 44
    .line 45
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/pgl/ssdk/h0;->k:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/pgl/ssdk/h0;->g:Z

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/pgl/ssdk/h0;->i:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "sensor"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/hardware/SensorManager;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/pgl/ssdk/h0;->b:Z

    if-eqz v0, :cond_0

    .line 50
    iget-boolean v0, p0, Lcom/pgl/ssdk/h0;->g:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/pgl/ssdk/h0;->d()Z

    :cond_0
    return-void
.end method

.method public b()[Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/pgl/ssdk/h0;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/pgl/ssdk/h0$a;

    .line 11
    .line 12
    sget-boolean v2, Lcom/pgl/ssdk/h0;->b:Z

    .line 13
    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :cond_0
    iget-object v4, p0, Lcom/pgl/ssdk/h0;->d:Landroid/hardware/Sensor;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v4, v1, Lcom/pgl/ssdk/h0$a;->b:[F

    .line 25
    .line 26
    if-eqz v4, :cond_3

    .line 27
    .line 28
    :cond_1
    iget-object v4, p0, Lcom/pgl/ssdk/h0;->e:Landroid/hardware/Sensor;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-object v4, v1, Lcom/pgl/ssdk/h0$a;->c:[F

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    :cond_2
    iget-object v4, p0, Lcom/pgl/ssdk/h0;->f:Landroid/hardware/Sensor;

    .line 37
    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    iget-object v4, v1, Lcom/pgl/ssdk/h0$a;->d:[F

    .line 41
    .line 42
    if-nez v4, :cond_4

    .line 43
    .line 44
    :cond_3
    const-wide/16 v4, 0x32

    .line 45
    .line 46
    invoke-static {v4, v5}, Lcom/pgl/ssdk/w0;->a(J)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    const/16 v4, 0x14

    .line 52
    .line 53
    if-le v3, v4, :cond_0

    .line 54
    .line 55
    :cond_4
    invoke-direct {p0}, Lcom/pgl/ssdk/h0;->e()V

    .line 56
    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/pgl/ssdk/h0;->g:Z

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/pgl/ssdk/h0;->a([Ljava/lang/Object;Lcom/pgl/ssdk/h0$a;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/pgl/ssdk/h0;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_5
    invoke-static {v0}, Lcom/pgl/ssdk/h0;->a([Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/h0;->d:Landroid/hardware/Sensor;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/pgl/ssdk/h0;->i:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "sensor"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/SensorManager;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/pgl/ssdk/h0;->d:Landroid/hardware/Sensor;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v3, p0, Lcom/pgl/ssdk/h0;->e:Landroid/hardware/Sensor;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, p0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v3, p0, Lcom/pgl/ssdk/h0;->f:Landroid/hardware/Sensor;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    if-nez v1, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/pgl/ssdk/h0;->e()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lcom/pgl/ssdk/h0;->k:J

    .line 53
    .line 54
    iget-object v3, p0, Lcom/pgl/ssdk/h0;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    .line 56
    new-instance v4, Lcom/pgl/ssdk/h0$a;

    .line 57
    .line 58
    invoke-direct {v4, v0, v1}, Lcom/pgl/ssdk/h0$a;-><init>(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/pgl/ssdk/h0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    invoke-direct {p0}, Lcom/pgl/ssdk/h0;->e()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/pgl/ssdk/h0;->g:Z

    .line 71
    .line 72
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/h0;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/pgl/ssdk/h0$a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    if-ne v1, v2, :cond_3

    .line 26
    .line 27
    iget-object v1, v0, Lcom/pgl/ssdk/h0$a;->d:[F

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 32
    .line 33
    iput-object p1, v0, Lcom/pgl/ssdk/h0$a;->d:[F

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v1, v0, Lcom/pgl/ssdk/h0$a;->c:[F

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 41
    .line 42
    iput-object p1, v0, Lcom/pgl/ssdk/h0$a;->c:[F

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v1, v0, Lcom/pgl/ssdk/h0$a;->b:[F

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 50
    .line 51
    iput-object p1, v0, Lcom/pgl/ssdk/h0$a;->b:[F

    .line 52
    .line 53
    :cond_3
    return-void
.end method
