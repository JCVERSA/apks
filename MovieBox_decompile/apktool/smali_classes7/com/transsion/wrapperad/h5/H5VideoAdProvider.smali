.class public final Lcom/transsion/wrapperad/h5/H5VideoAdProvider;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/wrapperad/h5/H5VideoAdProvider;

.field private static b:Lvw/a;

.field private static c:Z

.field private static d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

.field private static final e:Lcom/transsion/wrapperad/h5/H5VideoAdProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->a:Lcom/transsion/wrapperad/h5/H5VideoAdProvider;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/wrapperad/h5/H5VideoAdProvider$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->e:Lcom/transsion/wrapperad/h5/H5VideoAdProvider$a;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/transsion/wrapperad/h5/H5VideoAdProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b()Lvw/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->b:Lvw/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lcom/transsion/wrapperad/h5/H5VideoAdProvider$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->e:Lcom/transsion/wrapperad/h5/H5VideoAdProvider$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Lcom/transsion/ad/bidding/video/BiddingVideoManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method private final g()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;Lvw/a;)V
    .locals 6

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/transsion/ad/bidding/video/BiddingVideoManager;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->d:Lcom/transsion/ad/bidding/video/BiddingVideoManager;

    .line 16
    .line 17
    :cond_0
    sput-object p2, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->b:Lvw/a;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    sput-boolean p2, Lcom/transsion/wrapperad/h5/H5VideoAdProvider;->c:Z

    .line 21
    .line 22
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v3, Lcom/transsion/wrapperad/h5/H5VideoAdProvider$h5OpenAd$1;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {v3, p1, p2}, Lcom/transsion/wrapperad/h5/H5VideoAdProvider$h5OpenAd$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    return-void
.end method
