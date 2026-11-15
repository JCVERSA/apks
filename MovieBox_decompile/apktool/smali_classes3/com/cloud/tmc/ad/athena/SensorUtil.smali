.class public final Lcom/cloud/tmc/ad/athena/SensorUtil;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;,
        Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \'2\u00020\u0001:\u0002\'(B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0016J\u0006\u0010%\u001a\u00020\u001dJ\u0006\u0010&\u001a\u00020\u001dR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007R\u001e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007R\u001e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u001e\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000fR\u001e\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/athena/SensorUtil;",
        "Landroid/hardware/SensorEventListener;",
        "()V",
        "<set-?>",
        "",
        "accelerometerSensor",
        "getAccelerometerSensor",
        "()[F",
        "gravitySensor",
        "getGravitySensor",
        "gyroscopeSensor",
        "getGyroscopeSensor",
        "",
        "lightSensor",
        "getLightSensor",
        "()F",
        "mSensorManager",
        "Landroid/hardware/SensorManager;",
        "magneticFieldSensor",
        "getMagneticFieldSensor",
        "orientationSensor",
        "getOrientationSensor",
        "pressureSensor",
        "getPressureSensor",
        "proximitySensor",
        "getProximitySensor",
        "temperatureSensor",
        "getTemperatureSensor",
        "onAccuracyChanged",
        "",
        "sensor",
        "Landroid/hardware/Sensor;",
        "accuracy",
        "",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
        "onStart",
        "onStop",
        "Companion",
        "SingletonHolder",
        "com.cloud.tmc.miniad"
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
.field public static final Companion:Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;


# instance fields
.field private accelerometerSensor:[F

.field private gravitySensor:[F

.field private gyroscopeSensor:[F

.field private lightSensor:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private magneticFieldSensor:[F

.field private orientationSensor:[F

.field private pressureSensor:F

.field private proximitySensor:F

.field private temperatureSensor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/ad/athena/SensorUtil;->Companion:Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->orientationSensor:[F

    .line 4
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->magneticFieldSensor:[F

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gyroscopeSensor:[F

    .line 6
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gravitySensor:[F

    .line 7
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->accelerometerSensor:[F

    .line 8
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/SensorManager;

    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/ad/athena/SensorUtil;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/ad/athena/SensorUtil;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/ad/athena/SensorUtil;->onStop$lambda$0(Lcom/cloud/tmc/ad/athena/SensorUtil;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onStop$lambda$0(Lcom/cloud/tmc/ad/athena/SensorUtil;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAccelerometerSensor()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->accelerometerSensor:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGravitySensor()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gravitySensor:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGyroscopeSensor()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gyroscopeSensor:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLightSensor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->lightSensor:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMagneticFieldSensor()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->magneticFieldSensor:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOrientationSensor()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->orientationSensor:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPressureSensor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->pressureSensor:F

    .line 2
    .line 3
    return v0
.end method

.method public final getProximitySensor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->proximitySensor:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTemperatureSensor()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->temperatureSensor:F

    .line 2
    .line 3
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    const-string p2, "sensor"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    const-string v2, "event.values"

    .line 25
    .line 26
    packed-switch v0, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 31
    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gravitySensor:[F

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 39
    .line 40
    aget p1, p1, v1

    .line 41
    .line 42
    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->proximitySensor:F

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 46
    .line 47
    aget p1, p1, v1

    .line 48
    .line 49
    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->temperatureSensor:F

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 53
    .line 54
    aget p1, p1, v1

    .line 55
    .line 56
    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->pressureSensor:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 60
    .line 61
    aget p1, p1, v1

    .line 62
    .line 63
    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->lightSensor:F

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_5
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 67
    .line 68
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gyroscopeSensor:[F

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 75
    .line 76
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->orientationSensor:[F

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_7
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 83
    .line 84
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->magneticFieldSensor:[F

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_8
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 91
    .line 92
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->accelerometerSensor:[F

    .line 96
    .line 97
    :cond_1
    :goto_0
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    .line 45
    const/4 v1, 0x7

    .line 46
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    .line 75
    const/16 v1, 0x9

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/cloud/tmc/ad/athena/a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/cloud/tmc/ad/athena/a;-><init>(Lcom/cloud/tmc/ad/athena/SensorUtil;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x7d0

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
