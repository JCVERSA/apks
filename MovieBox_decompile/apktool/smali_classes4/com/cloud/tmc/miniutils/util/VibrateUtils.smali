.class public final Lcom/cloud/tmc/miniutils/util/VibrateUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static vibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "u can\'t instantiate me..."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static cancel()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

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
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static getVibrator()Landroid/os/Vibrator;
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "vibrator"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/Vibrator;

    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->vibrator:Landroid/os/Vibrator;

    .line 20
    .line 21
    return-object v0
.end method

.method public static vibrate(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static vibrate([JI)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method
