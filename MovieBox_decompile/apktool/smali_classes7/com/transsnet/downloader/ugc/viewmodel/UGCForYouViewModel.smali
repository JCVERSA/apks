.class public final Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/String;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->a:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/transsnet/downloader/ugc/viewmodel/c;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/viewmodel/c;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->b:Lkotlin/Lazy;

    .line 22
    .line 23
    new-instance v0, Landroidx/lifecycle/b0;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->d:Landroidx/lifecycle/b0;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic b()Lfx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->j()Lfx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Lfx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->f()Lfx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final f()Lfx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final j()Lfx/a;
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
    const-class v1, Lfx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lfx/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final g(Z)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p0, v1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel$getUGCDownloadForYouList$1;-><init>(ZLcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
