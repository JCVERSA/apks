.class public final Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;
.super Lam/b;
.source "source.java"


# instance fields
.field private f:Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

.field private final g:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;-><init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lam/b;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->f:Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    .line 5
    new-instance p1, Lcom/transsion/postdetail/ui/fragment/preload/c;

    invoke-direct {p1}, Lcom/transsion/postdetail/ui/fragment/preload/c;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->g:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;-><init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;)V

    return-void
.end method

.method public static synthetic k()Lao/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->o()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic l(Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;)Lao/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->n()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n()Lao/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lao/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final o()Lao/b;
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
    const-class v1, Lao/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lao/b;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public h(Landroidx/lifecycle/b0;)V
    .locals 6

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {v3, p0, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader$loadDataFromService$1;-><init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lam/b;->j(Lkotlinx/coroutines/t1;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final m()Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;->f:Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    .line 2
    .line 3
    return-object v0
.end method
