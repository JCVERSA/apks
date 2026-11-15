.class public final Lcom/yandex/mobile/ads/impl/l7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/mobile/ads/impl/e7;

.field private d:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

.field private final f:Lyi5;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/e7;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/e7;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/l7;-><init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e7;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/e7;)V
    .locals 1

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityVerificationReporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l7;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/l7;->b:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/l7;->c:Lcom/yandex/mobile/ads/impl/e7;

    .line 8
    sget-object p1, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;->INSTANCE:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$WaitingForVerification;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l7;->e:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/l7$a;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/l7$a;-><init>(Lcom/yandex/mobile/ads/impl/l7;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l7;->f:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/l7;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l7;->b:Landroid/content/Context;

    return-object p0
.end method

.method private final e()Z
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l7;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->f()Lcom/yandex/mobile/ads/impl/b7;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->e()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/o8;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lwh1;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;",
            "Lwh1<",
            "-",
            "Lkotlin/Result<",
            "Lzfb;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5
    instance-of v0, p4, Lcom/yandex/mobile/ads/impl/l7$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/yandex/mobile/ads/impl/l7$b;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/l7$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/yandex/mobile/ads/impl/l7$b;->e:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/l7$b;

    invoke-direct {v0, p0, p4}, Lcom/yandex/mobile/ads/impl/l7$b;-><init>(Lcom/yandex/mobile/ads/impl/l7;Lwh1;)V

    goto :goto_0

    :goto_1
    iget-object p4, v7, Lcom/yandex/mobile/ads/impl/l7$b;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget v1, v7, Lcom/yandex/mobile/ads/impl/l7$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v7, Lcom/yandex/mobile/ads/impl/l7$b;->b:Lcom/yandex/mobile/ads/impl/l7;

    invoke-static {p4}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/c;->b(Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/l7;->e()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/l7;->d:Lcom/yandex/mobile/ads/impl/o8;

    .line 9
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/l7;->f:Lyi5;

    invoke-interface {p4}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/yandex/mobile/ads/impl/p7;

    .line 10
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/l7;->b:Landroid/content/Context;

    .line 11
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/l7;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 12
    iput-object p0, v7, Lcom/yandex/mobile/ads/impl/l7$b;->b:Lcom/yandex/mobile/ads/impl/l7;

    iput v2, v7, Lcom/yandex/mobile/ads/impl/l7$b;->e:I

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/p7;->a(Landroid/content/Context;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lwh1;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    return-object v0

    .line 13
    :cond_3
    :goto_2
    check-cast p4, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

    .line 14
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/l7;->e:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

    .line 15
    instance-of p1, p4, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    if-eqz p1, :cond_5

    .line 16
    check-cast p4, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;

    invoke-virtual {p4}, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$Verified;->getVerifiedAd()Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;

    move-result-object p1

    invoke-interface {p1}, Lcom/monetization/ads/quality/base/AdQualityVerificationStateFlow;->getVerificationResultStateFlow()Lgx9;

    move-result-object p1

    invoke-interface {p1}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState;

    .line 17
    instance-of p2, p1, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$Blocked;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$Blocked;

    invoke-virtual {p1}, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$Blocked;->getReason()Lcom/monetization/ads/quality/base/model/AdQualityVerificationBlockingReasons;

    move-result-object p1

    goto :goto_3

    .line 18
    :cond_4
    instance-of p2, p1, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$ShouldBeBlockedOnDisplay;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$ShouldBeBlockedOnDisplay;

    invoke-virtual {p1}, Lcom/monetization/ads/quality/base/state/AdQualityVerificationState$ShouldBeBlockedOnDisplay;->getReason()Lcom/monetization/ads/quality/base/model/AdQualityVerificationBlockingReasons;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/monetization/ads/quality/base/model/AdQualityVerificationBlockingReasons;->getBlockReasons()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/monetization/ads/quality/base/model/AdQualityVerificationBlockingReasons;->getReportReasons()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l7;->d()V

    .line 21
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance p0, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/monetization/ads/quality/base/model/AdQualityVerificationBlockingReasons;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_4

    .line 22
    :cond_7
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_4

    .line 23
    :cond_8
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/l7;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l7;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/p7;

    .line 4
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/p7;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/l7;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l7;->f:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/p7;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/p7;->onAdClosed()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l7;->d()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/l7;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l7;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/p7;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/p7;->onAdWillDisplay()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/l7;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l7;->c:Lcom/yandex/mobile/ads/impl/e7;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/l7;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l7;->e:Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/l7;->d:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/e7;->a(Landroid/content/Context;Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;Lcom/yandex/mobile/ads/impl/o8;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l7;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/p7;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/p7;->onInvalidated()V

    :cond_0
    return-void
.end method
