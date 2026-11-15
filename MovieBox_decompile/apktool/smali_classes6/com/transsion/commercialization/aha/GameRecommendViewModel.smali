.class public final Lcom/transsion/commercialization/aha/GameRecommendViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Lkotlin/Lazy;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/commercialization/aha/h;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/commercialization/aha/h;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic b()Lcom/transsion/commercialization/aha/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->l()Lcom/transsion/commercialization/aha/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Lcom/transsion/commercialization/aha/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->k()Lcom/transsion/commercialization/aha/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/commercialization/aha/GameRecommendViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c:I

    .line 2
    .line 3
    return-void
.end method

.method private final j()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final k()Lcom/transsion/commercialization/aha/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/commercialization/aha/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final l()Lcom/transsion/commercialization/aha/g;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/commercialization/aha/g;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/commercialization/aha/g;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;-><init>(Lcom/transsion/commercialization/aha/GameRecommendViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method
