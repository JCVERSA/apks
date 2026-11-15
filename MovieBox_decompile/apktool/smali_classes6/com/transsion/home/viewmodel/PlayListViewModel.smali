.class public final Lcom/transsion/home/viewmodel/PlayListViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Lyk/b;

.field private final b:Lkotlin/Lazy;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-class v1, Lyk/b;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lyk/b;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->a:Lyk/b;

    .line 19
    .line 20
    new-instance v0, Lcom/transsion/home/viewmodel/m;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/transsion/home/viewmodel/m;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->b:Lkotlin/Lazy;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->c:I

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    iput v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->d:I

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/PlayListViewModel;->h()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/home/viewmodel/PlayListViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/PlayListViewModel;)Lyk/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->a:Lyk/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    const-string v0, "label"

    .line 2
    .line 3
    move-object v3, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "category"

    .line 8
    .line 9
    move-object v4, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "recType"

    .line 14
    .line 15
    move-object v5, p3

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "topIds"

    .line 20
    .line 21
    move-object v6, p4

    .line 22
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    new-instance v10, Lcom/transsion/home/viewmodel/PlayListViewModel$getPlayList$1;

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v1, v10

    .line 37
    move-object v2, p0

    .line 38
    move/from16 v7, p5

    .line 39
    .line 40
    invoke-direct/range {v1 .. v8}, Lcom/transsion/home/viewmodel/PlayListViewModel$getPlayList$1;-><init>(Lcom/transsion/home/viewmodel/PlayListViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    move-object v1, v0

    .line 47
    move-object v2, v9

    .line 48
    move-object v4, v10

    .line 49
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/viewmodel/PlayListViewModel;->c:I

    .line 2
    .line 3
    return-void
.end method
