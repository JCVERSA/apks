.class public Lk7/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/e$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private b:[F

.field private c:F

.field private d:[F

.field private e:F

.field private f:F

.field private g:[F

.field private h:F

.field private i:[F

.field private j:[F

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [F

    iput-object v1, p0, Lk7/e;->b:[F

    .line 4
    new-array v1, v0, [F

    iput-object v1, p0, Lk7/e;->d:[F

    .line 5
    new-array v1, v0, [F

    iput-object v1, p0, Lk7/e;->g:[F

    .line 6
    new-array v1, v0, [F

    iput-object v1, p0, Lk7/e;->i:[F

    .line 7
    new-array v1, v0, [F

    iput-object v1, p0, Lk7/e;->j:[F

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lk7/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lk7/e;->a:Landroid/hardware/SensorManager;

    return-void
.end method

.method synthetic constructor <init>(Lk7/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk7/e;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk7/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk7/e;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e()Lk7/e;
    .locals 1

    .line 1
    invoke-static {}, Lk7/e$b;->a()Lk7/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static k()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "ots"

    .line 7
    .line 8
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lk7/e;->h()[F

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 17
    .line 18
    .line 19
    const-string v1, "ls"

    .line 20
    .line 21
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lk7/e;->f()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 30
    .line 31
    .line 32
    const-string v1, "ms"

    .line 33
    .line 34
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lk7/e;->g()[F

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 43
    .line 44
    .line 45
    const-string v1, "pxs"

    .line 46
    .line 47
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lk7/e;->j()F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 56
    .line 57
    .line 58
    const-string v1, "tps"

    .line 59
    .line 60
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lk7/e;->l()F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 69
    .line 70
    .line 71
    const-string v1, "gs"

    .line 72
    .line 73
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lk7/e;->d()[F

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 82
    .line 83
    .line 84
    const-string v1, "pss"

    .line 85
    .line 86
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lk7/e;->i()F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 95
    .line 96
    .line 97
    const-string v1, "gvs"

    .line 98
    .line 99
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lk7/e;->c()[F

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 108
    .line 109
    .line 110
    const-string v1, "ams"

    .line 111
    .line 112
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lk7/e;->b()[F

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    return-object v0
.end method

.method private synthetic n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lk7/e;->a:Landroid/hardware/SensorManager;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static q()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lk7/e;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lk7/e;->p()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :catch_1
    move-exception v0

    .line 28
    :try_start_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lk7/a;->r0(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_3
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lk7/e;->p()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :goto_1
    :try_start_4
    invoke-static {}, Lk7/e;->e()Lk7/e;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lk7/e;->p()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catch_2
    move-exception v1

    .line 52
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lk7/a;->r0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    throw v0
.end method


# virtual methods
.method public b()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/e;->j:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public c()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/e;->i:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public d()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/e;->g:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lk7/e;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public g()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/e;->d:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public h()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/e;->b:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lk7/e;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget v0, p0, Lk7/e;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lk7/e;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk7/e;->a:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lk7/e;->a:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lk7/e;->a:Landroid/hardware/SensorManager;

    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lk7/e;->a:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    array-length v1, v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 26
    .line 27
    iput-object p1, p0, Lk7/e;->i:[F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 31
    .line 32
    aget p1, p1, v1

    .line 33
    .line 34
    iput p1, p0, Lk7/e;->e:F

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 38
    .line 39
    aget p1, p1, v1

    .line 40
    .line 41
    iput p1, p0, Lk7/e;->f:F

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 45
    .line 46
    aget p1, p1, v1

    .line 47
    .line 48
    iput p1, p0, Lk7/e;->h:F

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 52
    .line 53
    aget p1, p1, v1

    .line 54
    .line 55
    iput p1, p0, Lk7/e;->c:F

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 59
    .line 60
    iput-object p1, p0, Lk7/e;->g:[F

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 64
    .line 65
    iput-object p1, p0, Lk7/e;->b:[F

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_7
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 69
    .line 70
    iput-object p1, p0, Lk7/e;->d:[F

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_8
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 74
    .line 75
    iput-object p1, p0, Lk7/e;->j:[F

    .line 76
    .line 77
    :cond_1
    :goto_0
    return-void

    .line 78
    nop

    .line 79
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

.method public p()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lk7/d;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lk7/d;-><init>(Lk7/e;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
