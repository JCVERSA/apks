.class public final Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;
.super Lam/b;
.source "source.java"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private final j:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "postId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lam/b;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->f:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->g:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->h:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->i:I

    .line 9
    new-instance p1, Lcom/transsion/postdetail/ui/fragment/preload/d;

    invoke-direct {p1}, Lcom/transsion/postdetail/ui/fragment/preload/d;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->j:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    const-string p2, "0"

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 2
    const-string p3, "1"

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x5

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic k()Lao/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->r()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic l(Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;)Lao/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->q()Lao/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final q()Lao/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->j:Lkotlin/Lazy;

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

.method private static final r()Lao/b;
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
    new-instance v3, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2$loadDataFromService$1;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {v3, p0, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2$loadDataFromService$1;-><init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;Lkotlin/coroutines/Continuation;)V

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

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->h:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
