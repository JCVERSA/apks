.class public final Lcom/tn/tranpay/report/ThreadSingleExecutor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/report/ThreadSingleExecutor$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/tn/tranpay/report/ThreadSingleExecutor$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tn/tranpay/report/ThreadSingleExecutor$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/tn/tranpay/report/ThreadSingleExecutor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->b:Lcom/tn/tranpay/report/ThreadSingleExecutor$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    sget-object v1, Lcom/tn/tranpay/report/ThreadSingleExecutor$Companion$INSTANCE$2;->INSTANCE:Lcom/tn/tranpay/report/ThreadSingleExecutor$Companion$INSTANCE$2;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->c:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tn/tranpay/report/a;

    .line 5
    .line 6
    const-string v1, "tran_single"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/tn/tranpay/report/a;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->a:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
