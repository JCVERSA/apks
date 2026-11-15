.class public final Lw30;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw30$a;,
        Lw30$b;
    }
.end annotation


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:[Ld72;

.field private volatile synthetic notCompletedCount$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lw30;

    const-string v1, "notCompletedCount$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lw30;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Ld72;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw30;->a:[Ld72;

    array-length p1, p1

    iput p1, p0, Lw30;->notCompletedCount$volatile:I

    return-void
.end method

.method public static final synthetic a(Lw30;)[Ld72;
    .locals 0

    iget-object p0, p0, Lw30;->a:[Ld72;

    return-object p0
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    invoke-static {}, Lw30;->d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lw30;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final c(Lwh1;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {p0}, Lw30;->a(Lw30;)[Ld72;

    move-result-object v1

    array-length v1, v1

    new-array v3, v1, [Lw30$a;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-static {p0}, Lw30;->a(Lw30;)[Ld72;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-interface {v6}, Lkotlinx/coroutines/j;->start()Z

    new-instance v7, Lw30$a;

    invoke-direct {v7, p0, v0}, Lw30$a;-><init>(Lw30;Lcr0;)V

    const/4 v8, 0x0

    invoke-static {v6, v4, v7, v2, v8}, Ln95;->k(Lkotlinx/coroutines/j;ZLo95;ILjava/lang/Object;)Luc2;

    move-result-object v6

    invoke-virtual {v7, v6}, Lw30$a;->B(Luc2;)V

    sget-object v6, Lzfb;->a:Lzfb;

    aput-object v7, v3, v5

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    new-instance v5, Lw30$b;

    invoke-direct {v5, p0, v3}, Lw30$b;-><init>(Lw30;[Lw30$a;)V

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object p0, v3, v4

    invoke-virtual {p0, v5}, Lw30$a;->A(Lw30$b;)V

    add-int/2addr v4, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcr0;->isCompleted()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v5}, Lw30$b;->b()V

    goto :goto_2

    :cond_2
    invoke-static {v0, v5}, Lfr0;->c(Lcr0;Lkotlinx/coroutines/b;)V

    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_3
    return-object p0
.end method
