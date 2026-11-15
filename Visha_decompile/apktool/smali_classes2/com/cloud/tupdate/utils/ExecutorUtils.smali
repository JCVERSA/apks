.class public abstract Lcom/cloud/tupdate/utils/ExecutorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final c:Lyi5;

.field public static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final e:Lyi5;

.field public static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final g:Lyi5;

.field public static final h:Lyi5;

.field public static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final j:Lyi5;

.field public static final k:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->a:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils$ioE$2;->INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$ioE$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->c:Lyi5;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils$computationE$2;->INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$computationE$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->e:Lyi5;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;->INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$newE$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->g:Lyi5;

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils$singleE$2;->INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$singleE$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->h:Lyi5;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils$scheduledE$2;->INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$scheduledE$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->j:Lyi5;

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils$mainE$2;->INSTANCE:Lcom/cloud/tupdate/utils/ExecutorUtils$mainE$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->k:Lyi5;

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->a:I

    return v0
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic e()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->c:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final g()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/utils/ExecutorUtils;->k:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final h()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final i()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/tupdate/utils/ExecutorUtils;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
