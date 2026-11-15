.class public abstract Lcom/blankj/utilcode/util/f0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Landroid/os/Vibrator;


# direct methods
.method private static a()Landroid/os/Vibrator;
    .locals 2

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/f0;->a:Landroid/os/Vibrator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

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
    sput-object v0, Lcom/blankj/utilcode/util/f0;->a:Landroid/os/Vibrator;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/f0;->a:Landroid/os/Vibrator;

    .line 20
    .line 21
    return-object v0
.end method

.method public static b(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/f0;->a()Landroid/os/Vibrator;

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
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
