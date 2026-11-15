.class public final Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;",
        "Ljava/util/concurrent/ThreadFactory;",
        "name",
        "",
        "daemon",
        "",
        "(Ljava/lang/String;Z)V",
        "atomicInteger",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getAtomicInteger",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "atomicInteger$delegate",
        "Lkotlin/Lazy;",
        "newThread",
        "Ljava/lang/Thread;",
        "r",
        "Ljava/lang/Runnable;",
        "Companion",
        "com.cloud.tmc.offline_download"
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
.field public static final Companion:Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory$Companion;

.field private static final TAG:Ljava/lang/String; = "TmcOfflineDownload: DownLoadThreadFactory"


# instance fields
.field private final atomicInteger$delegate:Lkotlin/Lazy;

.field private final daemon:Z

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->Companion:Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->name:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->daemon:Z

    .line 12
    .line 13
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    sget-object p2, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory$atomicInteger$2;->INSTANCE:Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory$atomicInteger$2;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->atomicInteger$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->newThread$lambda$0(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getAtomicInteger()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->atomicInteger$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final newThread$lambda$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "TmcOfflineDownload: DownLoadThreadFactory"

    .line 15
    .line 16
    const-string v1, "\u7ebf\u7a0b\u6c60\u4e2d\u7684\u67d0\u4e2a\u7ebf\u7a0b\u53d1\u751f\u4e86\u95ee\u9898\uff0c\u8bf7\u67e5\u770b\u63a7\u5236\u53f0\u6216\u8005\u65e5\u5fd7\u6587\u4ef6\uff01\u3002"

    .line 17
    .line 18
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/tmc/offline/download/thread/d;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/cloud/tmc/offline/download/thread/d;-><init>(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->getAtomicInteger()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "-"

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/cloud/tmc/offline/download/thread/DownloadThreadFactory;->daemon:Z

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
