.class public Lcom/cloud/tmc/kernel/log/TmcLogger;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;,
        Lcom/cloud/tmc/kernel/log/TmcLogger$DefaultLoggerImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final LOG_PREFIX:Ljava/lang/String; = "Tmc_"

.field private static final LOG_PREFIX_LENGTH:I = 0x4

.field private static LOG_SWITCH_TAG:Ljava/lang/String; = "miniapp"

.field private static final MAX_LOG_TAG_LENGTH:I = 0x17

.field private static final TAG:Ljava/lang/String; = "TmcLogger"

.field private static isLogOpen:Z

.field public static sDefaultImpl:Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "miniapp"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->isLogOpen:Z

    .line 9
    .line 10
    new-instance v0, Lcom/cloud/tmc/kernel/log/TmcLogger$DefaultLoggerImpl;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger$DefaultLoggerImpl;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->sDefaultImpl:Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->isLogOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "TmcLogger"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    const-string v0, "TmcLogger"

    invoke-static {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static enableDebugLog(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/cloud/tmc/kernel/log/TmcLogger;->isLogOpen:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/cloud/tmc/kernel/log/TmcLogger;->sDefaultImpl:Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->makeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/cloud/tmc/kernel/log/TmcLogger;->LOG_PREFIX_LENGTH:I

    rsub-int/lit8 v2, v1, 0x17

    const-string v3, "Tmc_"

    if-le v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v1, v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printPerformanceLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[Thread:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "] [Stage:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, "] [Info:"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "] [TimeStamp:"

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, "]"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "TmcPerformance"

    .line 60
    .line 61
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TmcLogger"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/cloud/tmc/kernel/log/TmcLogger;->get()Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger$Proxy;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
