.class public final Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lwj/g;

.field private final b:Lcom/transsion/memberapi/MemberCheckResult;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private f:Lcom/transsion/memberapi/OpType;

.field private g:Lcom/transsion/commercialization/task/AdInterceptDialog;


# direct methods
.method public constructor <init>(Lwj/g;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lwj/g;

    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->b:Lcom/transsion/memberapi/MemberCheckResult;

    .line 4
    iput-object p3, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->d:Z

    .line 6
    sget-object p1, Lcom/transsion/memberapi/OpType;->OP_AD:Lcom/transsion/memberapi/OpType;

    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    return-void
.end method

.method public synthetic constructor <init>(Lwj/g;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;-><init>(Lwj/g;Lcom/transsion/memberapi/MemberCheckResult;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->p(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->n(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Lcom/transsion/commercialization/task/AdInterceptDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->g:Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lwj/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lwj/g;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 14
    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->g:Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 18
    .line 19
    return-void
.end method

.method private final j(Lcom/transsion/memberapi/MemberCheckResult;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberCheckResult;->getMemberPrice()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberCheckResult;->getCurrency()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " "

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private final k()V
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
    new-instance v4, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper$loadNativeAd$1;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Lkotlin/coroutines/Continuation;)V

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

.method private final l()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/manager/c;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> showAdInterceptDialog() --> \u5e7f\u544a\u4efb\u52a1 \u672a\u5b8c\u6210 --> \u7ed3\u675f\u6d41\u7a0b"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 30
    .line 31
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget v2, Lcom/transsion/commercialization/R$string;->co_cancel_tips:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lwj/g;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Lwj/g;->onFail()V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->i()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final m()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/manager/c;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> showAdInterceptDialog() --> \u5e7f\u544a\u4efb\u52a1\u5b8c\u6210 --> \u7ee7\u7eed\u6267\u884c\u4e0b\u8f7d\u4efb\u52a1 --> \u7ed3\u675f\u6d41\u7a0b"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lwj/g;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Lwj/g;->onSuccess()V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    const-class v1, Lim/b;

    .line 40
    .line 41
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lim/b;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    .line 50
    .line 51
    new-instance v2, Lcom/transsion/commercialization/task/f;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/transsion/commercialization/task/f;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v2}, Lim/b;->n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->i()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private static final n(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdSceneAssetsManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/manager/c;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, " --> checkMember() --> uploadOperationStat --> "

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " --> success"

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private static final p(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->m()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->l()V

    .line 13
    .line 14
    .line 15
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public final h()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->b:Lcom/transsion/memberapi/MemberCheckResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberCheckResult;->getInterceptType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    sget-object v1, Lcom/transsion/memberapi/OpType;->OP_INSTALL:Lcom/transsion/memberapi/OpType;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object v1, Lcom/transsion/memberapi/OpType;->OP_AD:Lcom/transsion/memberapi/OpType;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/transsion/memberapi/OpType;->getValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :goto_1
    iput-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->f:Lcom/transsion/memberapi/OpType;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->a:Lwj/g;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-interface {v0, v1}, Lwj/g;->a(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    new-instance v0, Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/transsion/commercialization/task/AdInterceptDialog;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->g:Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->b:Lcom/transsion/memberapi/MemberCheckResult;

    .line 51
    .line 52
    invoke-direct {p0, v1}, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->j(Lcom/transsion/memberapi/MemberCheckResult;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->N0(Ljava/lang/String;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->I0(Ljava/lang/String;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 62
    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->d:Z

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->H0(Z)Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 70
    .line 71
    invoke-virtual {v0, v1, p1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->F0(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/transsion/commercialization/task/e;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/transsion/commercialization/task/e;-><init>(Lcom/transsion/commercialization/task/DownloadInterceptAdHelper;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/AdInterceptDialog;->G0(Lkotlin/jvm/functions/Function1;)Lcom/transsion/commercialization/task/AdInterceptDialog;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v1, "AdInterceptDialog"

    .line 87
    .line 88
    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
