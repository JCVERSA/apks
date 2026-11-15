.class public final Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

.field public static OooO0O0:I = -0x1

.field public static final OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
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


# virtual methods
.method public final OooO00o()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    const-string v1, "AthenaUtil"

    .line 22
    .line 23
    const-string v2, "checkOverFlow Fail:"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method public final OooO0O0()I
    .locals 3

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 7
    .line 8
    const-string v1, "athenaCacheSize"

    .line 9
    .line 10
    const/16 v2, 0x12c

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    .line 17
    .line 18
    :cond_0
    sget v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "CACHE_MAX_COUNT:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "AthenaUtil"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    .line 43
    .line 44
    return v0
.end method
