.class public final Lcom/transsnet/downloader/manager/StartDownloadHelper;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StartDownloadHelper"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsnet/downloader/manager/x;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/x;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->e()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Lcx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->d()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsnet/downloader/manager/StartDownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final d()Lcx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/manager/StartDownloadHelper;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final e()Lcx/a;
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
    const-class v1, Lcx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcx/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final f(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper$startDownloadResource$1;-><init>(Ljava/util/List;Lcom/transsnet/downloader/manager/StartDownloadHelper;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method
