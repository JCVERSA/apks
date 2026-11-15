.class public final Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/play/detail/viewmodel/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/transsion/play/detail/viewmodel/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->a:Lkotlin/Lazy;

    .line 16
    .line 17
    new-instance v0, Landroidx/lifecycle/b0;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic b()Lcn/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->h()Lcn/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;)Lcn/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->e()Lcn/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final e()Lcn/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcn/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final h()Lcn/a;
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
    const-class v1, Lcn/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcn/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel$getSubjectPostCount$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel$getSubjectPostCount$1;-><init>(Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method
