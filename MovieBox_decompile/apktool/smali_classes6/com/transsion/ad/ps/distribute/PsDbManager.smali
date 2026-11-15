.class public final Lcom/transsion/ad/ps/distribute/PsDbManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PsDbManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsDbManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/ad/ps/distribute/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->b:Lkotlin/Lazy;

    .line 18
    .line 19
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

.method public static synthetic a()Lvh/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/ps/distribute/PsDbManager;->m()Lvh/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/ps/distribute/PsDbManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/ps/distribute/PsDbManager;

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

.method private final i()Lvh/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvh/l;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final m()Lvh/l;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/MbAdDatabase$m;->b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/ad/db/MbAdDatabase;->z0()Lvh/l;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lvh/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lvh/l;->d(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lvh/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lvh/l;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lvh/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2}, Lvh/l;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final g(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lvh/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lvh/l;->f(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lvh/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lvh/l;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final j(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lvh/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lvh/l;->b(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public final k(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->i(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLinkAdPlan()Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v4, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutClick$1;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {v4, p1, v0}, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutClick$1;-><init>(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    nop

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->i(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLinkAdPlan()Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v4, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutDisplay$1;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {v4, p1, v0}, Lcom/transsion/ad/ps/distribute/PsDbManager$onBiddingBuyOutDisplay$1;-><init>(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    nop

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PsDbManager;->i()Lvh/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2}, Lvh/l;->e(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p1
.end method
