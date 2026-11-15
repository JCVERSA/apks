.class public final Lcom/cloud/tmc/reporttrack/ReportForExternal;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J \u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u001c\u0010\r\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tmc/reporttrack/ReportForExternal;",
        "",
        "()V",
        "APP_ID",
        "",
        "TAG",
        "",
        "athenaReport",
        "",
        "tag",
        "athenaAppId",
        "data",
        "Landroid/os/Bundle;",
        "report",
        "bundle",
        "com.cloud.tmc.reporttrack"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final APP_ID:I = 0xeab

.field public static final INSTANCE:Lcom/cloud/tmc/reporttrack/ReportForExternal;

.field public static final TAG:Ljava/lang/String; = "ExternalAthenaUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/reporttrack/ReportForExternal;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/reporttrack/ReportForExternal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/reporttrack/ReportForExternal;->INSTANCE:Lcom/cloud/tmc/reporttrack/ReportForExternal;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->report$lambda$3(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final athenaReport(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    new-instance v0, Lhi/a;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lhi/a;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v0, p3, p1}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lhi/a;->b()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->report$lambda$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final report(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    .line 5
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->currentProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->mainProcessIsInitAthena:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->delayStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/Utils;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/cloud/tmc/reporttrack/a;

    invoke-direct {v1}, Lcom/cloud/tmc/reporttrack/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {}, Lcom/cloud/tmc/reporttrack/utils/Utils;->getInitAthenaStatus()V

    .line 9
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report -> isNeedGetAthenaStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v2, :cond_7

    .line 10
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->INSTANCE:Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;

    invoke-virtual {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->getAthenaData()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->clearAthenaData()V

    .line 12
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ", tag = "

    if-nez v0, :cond_6

    .line 13
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report -> exist cache, post all size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    new-instance v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    new-instance p1, Ljava/lang/Thread;

    .line 17
    new-instance p2, Lcom/cloud/tmc/reporttrack/b;

    invoke-direct {p2, v1}, Lcom/cloud/tmc/reporttrack/b;-><init>(Ljava/util/List;)V

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 20
    :cond_5
    check-cast v1, Ljava/lang/Iterable;

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "report -> cache, post, athenaAppId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getAthenaAppId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    sget-object p3, Lcom/cloud/tmc/reporttrack/ReportForExternal;->INSTANCE:Lcom/cloud/tmc/reporttrack/ReportForExternal;

    invoke-virtual {p2}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getAthenaAppId()I

    move-result v1

    invoke-virtual {p2}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p3, v0, v1, p2}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->athenaReport(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_2

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report -> no cache, post only current, athenaAppId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->athenaReport(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_3

    .line 26
    :cond_7
    sget-object v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->INSTANCE:Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;

    new-instance v1, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    invoke-direct {v1, p2, p1, p3}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataCache;->setAthenaData(Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_8
    :goto_3
    return-void
.end method

.method public static synthetic report$default(Lcom/cloud/tmc/reporttrack/ReportForExternal;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->report(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final report$lambda$1()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/reporttrack/utils/Utils;->getInitAthenaStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final report$lambda$3(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "$dataCaches"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "report -> cache, post, athenaAppId = "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getAthenaAppId()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", tag = "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getEvent()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/cloud/tmc/reporttrack/ReportForExternal;->INSTANCE:Lcom/cloud/tmc/reporttrack/ReportForExternal;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getEvent()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getAthenaAppId()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v0}, Lcom/cloud/tmc/reporttrack/utils/AthenaDataBean;->getData()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v1, v2, v3, v0}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->athenaReport(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public final report(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :cond_0
    sget-object p2, Lcom/cloud/tmc/reporttrack/ReportForExternal;->INSTANCE:Lcom/cloud/tmc/reporttrack/ReportForExternal;

    const/16 v1, 0xeab

    invoke-direct {p2, p1, v1, v0}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->report(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
