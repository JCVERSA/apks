.class public final Lcom/cloud/config/utils/ExecutorUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\r\u001a\u0006\u0010\u001e\u001a\u00020\u0005\u001a\u0006\u0010\u001f\u001a\u00020\u0005\u001a\u0006\u0010 \u001a\u00020\u0005\u001a\u0006\u0010!\u001a\u00020\u0005\u001a\u0006\u0010\"\u001a\u00020\u0017\u001a\u0006\u0010#\u001a\u00020\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\"\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u000b\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\t\u001a\u0004\u0008\u000c\u0010\u0007\"\u001b\u0010\u000e\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\t\u001a\u0004\u0008\u000f\u0010\u0007\"\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0012\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0013\u0010\u0007\"\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\t\u001a\u0004\u0008\u0018\u0010\u0019\"\u001b\u0010\u001b\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001c\u0010\u0007\u00a8\u0006$"
    }
    d2 = {
        "CPU_CORE",
        "",
        "computationA",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "computationE",
        "Ljava/util/concurrent/ExecutorService;",
        "getComputationE",
        "()Ljava/util/concurrent/ExecutorService;",
        "computationE$delegate",
        "Lkotlin/Lazy;",
        "ioA",
        "ioE",
        "getIoE",
        "ioE$delegate",
        "mainE",
        "getMainE",
        "mainE$delegate",
        "newA",
        "newE",
        "getNewE",
        "newE$delegate",
        "scheduledA",
        "scheduledE",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "getScheduledE",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "scheduledE$delegate",
        "singleE",
        "getSingleE",
        "singleE$delegate",
        "computation",
        "io",
        "main",
        "new",
        "scheduled",
        "single",
        "config_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
.end annotation


# static fields
.field private static final CPU_CORE:I

.field private static computationA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final computationE$delegate:Lkotlin/Lazy;

.field private static ioA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final ioE$delegate:Lkotlin/Lazy;

.field private static final mainE$delegate:Lkotlin/Lazy;

.field private static newA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final newE$delegate:Lkotlin/Lazy;

.field private static scheduledA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final scheduledE$delegate:Lkotlin/Lazy;

.field private static final singleE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/cloud/config/utils/ExecutorUtils;->CPU_CORE:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$ioE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$ioE$2;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioE$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$computationE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$computationE$2;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationE$delegate:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$newE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$newE$2;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newE$delegate:Lkotlin/Lazy;

    .line 55
    .line 56
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$singleE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$singleE$2;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->singleE$delegate:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$scheduledE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$scheduledE$2;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledE$delegate:Lkotlin/Lazy;

    .line 78
    .line 79
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$mainE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$mainE$2;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->mainE$delegate:Lkotlin/Lazy;

    .line 86
    .line 87
    return-void
.end method

.method public static final synthetic access$getCPU_CORE$p()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/config/utils/ExecutorUtils;->CPU_CORE:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getComputationA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIoA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getNewA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getScheduledA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledA:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final computation()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getComputationE()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final getComputationE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationE$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final getIoE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioE$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final getMainE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->mainE$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final getNewE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newE$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final getScheduledE()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledE$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final getSingleE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->singleE$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final io()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getIoE()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final main()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getMainE()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final new()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getNewE()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final scheduled()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getScheduledE()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final single()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getSingleE()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
