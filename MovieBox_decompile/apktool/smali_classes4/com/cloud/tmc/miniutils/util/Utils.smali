.class public final Lcom/cloud/tmc/miniutils/util/Utils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/Utils$Func1;,
        Lcom/cloud/tmc/miniutils/util/Utils$Supplier;,
        Lcom/cloud/tmc/miniutils/util/Utils$Consumer;,
        Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;,
        Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;
    }
.end annotation


# static fields
.field private static sApp:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


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

.method public static getApp()Landroid/app/Application;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->getApplicationByReflect()Landroid/app/Application;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/Utils;->init(Landroid/app/Application;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string v1, "reflect failed."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "Utils"

    .line 4
    .line 5
    const-string v0, "app is null."

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sput-object p0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->init(Landroid/app/Application;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->unInit(Landroid/app/Application;)V

    .line 31
    .line 32
    .line 33
    sput-object p0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->init(Landroid/app/Application;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static setAppIfNecessary(Landroid/app/Application;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniutils/util/Utils;->sApp:Landroid/app/Application;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/Utils;->init(Landroid/app/Application;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
