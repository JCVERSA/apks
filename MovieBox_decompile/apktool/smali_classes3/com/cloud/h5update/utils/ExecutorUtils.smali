.class public abstract Lcom/cloud/h5update/utils/ExecutorUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:I

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Lkotlin/Lazy;

.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final e:Lkotlin/Lazy;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final g:Lkotlin/Lazy;

.field private static final h:Lkotlin/Lazy;

.field private static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final j:Lkotlin/Lazy;

.field private static final k:Lkotlin/Lazy;


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
    sput v0, Lcom/cloud/h5update/utils/ExecutorUtils;->a:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$ioE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$ioE$2;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->c:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$computationE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$computationE$2;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->e:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$newE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$newE$2;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->g:Lkotlin/Lazy;

    .line 55
    .line 56
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$singleE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$singleE$2;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->h:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$scheduledE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$scheduledE$2;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->j:Lkotlin/Lazy;

    .line 78
    .line 79
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$mainE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$mainE$2;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->k:Lkotlin/Lazy;

    .line 86
    .line 87
    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/h5update/utils/ExecutorUtils;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->c:Lkotlin/Lazy;

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

.method public static final g()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/h5update/utils/ExecutorUtils;->f()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
