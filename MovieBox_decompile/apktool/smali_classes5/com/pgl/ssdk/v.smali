.class public Lcom/pgl/ssdk/v;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static a:I = -0x1

.field public static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()I
    .locals 3

    .line 2
    sget v0, Lcom/pgl/ssdk/v;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/x;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/u0;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "camera_count"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 5
    sput v0, Lcom/pgl/ssdk/v;->b:I

    return v0

    .line 6
    :cond_1
    new-instance v0, Lcom/pgl/ssdk/v$a;

    invoke-direct {v0}, Lcom/pgl/ssdk/v$a;-><init>()V

    invoke-static {v0}, Lcom/pgl/ssdk/o0;->b(Ljava/lang/Runnable;)V

    return v1
.end method

.method static synthetic a(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pgl/ssdk/v;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/v;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const-string v0, "camera"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length p0, p0

    .line 22
    sput p0, Lcom/pgl/ssdk/v;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    sput v1, Lcom/pgl/ssdk/v;->b:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, -0x2

    .line 29
    sput p0, Lcom/pgl/ssdk/v;->b:I

    .line 30
    .line 31
    :goto_0
    sget p0, Lcom/pgl/ssdk/v;->b:I

    .line 32
    .line 33
    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/v;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "phone"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    sput p0, Lcom/pgl/ssdk/v;->a:I

    .line 21
    .line 22
    :cond_0
    sget p0, Lcom/pgl/ssdk/v;->a:I

    .line 23
    .line 24
    return p0
.end method
