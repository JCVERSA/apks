.class public final Lcom/transsnet/login/interest/LoginInterestViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/lifecycle/b0;

    .line 10
    .line 11
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsnet/login/interest/LoginInterestViewModel;->b:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic c(Lcom/transsnet/login/interest/LoginInterestViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/interest/LoginInterestViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/interest/LoginInterestViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v3, Lcom/transsnet/login/interest/LoginInterestViewModel$postInterest$1$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v3, p0, p1, v2}, Lcom/transsnet/login/interest/LoginInterestViewModel$postInterest$1$1;-><init>(Lcom/transsnet/login/interest/LoginInterestViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
