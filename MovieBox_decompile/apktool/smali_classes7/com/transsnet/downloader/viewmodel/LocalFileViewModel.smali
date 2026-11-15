.class public final Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;
.super Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;
.source "source.java"


# instance fields
.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;-><init>()V

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
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->d:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->j(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Z)V
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
    new-instance v3, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, p1, v2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel$getOutsideLocalVideoList$1;-><init>(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZLkotlin/coroutines/Continuation;)V

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
