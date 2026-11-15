.class public Lcom/transsion/hubsdk/common/util/TranSdkLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog$Default;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 3
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static getLogLevel()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 3
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setImpl(Lcom/transsion/hubsdk/common/util/ITranLogger;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "logger must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLogLevel(I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/common/util/ITranLogger;->setLogLevel(I)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 3
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/common/util/ITranLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 3
    sget-boolean v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/util/TranSdkLog;->sLogger:Lcom/transsion/hubsdk/common/util/ITranLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/common/util/ITranLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
