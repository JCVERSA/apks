.class public abstract Lcom/transsion/transfer/wifi/create/adapter/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ldu/a;

.field private b:Lcom/transsion/transfer/wifi/create/a;

.field private c:Lkotlinx/coroutines/n0;


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


# virtual methods
.method public abstract a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getSimpleName(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->c:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/transsion/transfer/wifi/create/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ldu/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->a:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract f()V
.end method

.method public final g(Lkotlinx/coroutines/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->c:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Lcom/transsion/transfer/wifi/create/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Ldu/a;Lcom/transsion/transfer/wifi/create/a;Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->a:Ldu/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->b:Lcom/transsion/transfer/wifi/create/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->c:Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    invoke-virtual {p0, p4}, Lcom/transsion/transfer/wifi/create/adapter/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method
