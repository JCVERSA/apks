.class final Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/report/crashreport/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/report/crashreport/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;->c(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static c(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/mbridge/msdk/foundation/same/report/crashreport/d;->a(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "AnrMonitorManager"

    .line 7
    .line 8
    const-string v0, "handler anr failed"

    .line 9
    .line 10
    invoke-static {p1, v0, p0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    const-string v1, "AnrMonitorManager"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnrHappened: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/crashreport/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    const-string p1, "onAnrHappened: can track false"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/crashreport/d;->a(J)J

    .line 7
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;-><init>(Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
