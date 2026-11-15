.class public final Lcom/yandex/mobile/ads/impl/q7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j7;

.field private final b:Lcom/yandex/mobile/ads/impl/k7;

.field private final c:Lcom/yandex/mobile/ads/impl/o7;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 2

    .line 1
    new-instance p1, Lcom/yandex/mobile/ads/impl/j7;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/j7;-><init>()V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/k7;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k7;-><init>()V

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/o7;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/o7;-><init>()V

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/q7;-><init>(Lcom/yandex/mobile/ads/impl/j7;Lcom/yandex/mobile/ads/impl/k7;Lcom/yandex/mobile/ads/impl/o7;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/j7;Lcom/yandex/mobile/ads/impl/k7;Lcom/yandex/mobile/ads/impl/o7;)V
    .locals 1

    .line 5
    const-string v0, "verifierAdapterCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifierAdapterConfigurationFactory"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityVerifierVerificationPolicyFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q7;->a:Lcom/yandex/mobile/ads/impl/j7;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/q7;->b:Lcom/yandex/mobile/ads/impl/k7;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/q7;->c:Lcom/yandex/mobile/ads/impl/o7;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p7;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->f()Lcom/yandex/mobile/ads/impl/b7;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/b7;->e()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q7;->b:Lcom/yandex/mobile/ads/impl/k7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/k7;->a(Lcom/yandex/mobile/ads/impl/b7;)Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;

    move-result-object v4

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/q7;->a:Lcom/yandex/mobile/ads/impl/j7;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j7;->a()Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;

    move-result-object v3

    if-nez v3, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/x6;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/x6;-><init>()V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q7;->c:Lcom/yandex/mobile/ads/impl/o7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/o7;->a(Lcom/yandex/mobile/ads/impl/b7;)Lcom/yandex/mobile/ads/impl/d7;

    move-result-object p0

    invoke-virtual {v4}, Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;->getVerificationTimeoutInSec()J

    move-result-wide v1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    new-instance v7, Lcom/yandex/mobile/ads/impl/n7;

    invoke-direct {v7, p0}, Lcom/yandex/mobile/ads/impl/n7;-><init>(Lcom/yandex/mobile/ads/impl/d7;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/h7;

    invoke-direct {v8, p0}, Lcom/yandex/mobile/ads/impl/h7;-><init>(Lcom/yandex/mobile/ads/impl/d7;)V

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/y6;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/y6;-><init>(Lcom/monetization/ads/quality/base/AdQualityVerifierAdapter;Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifierAdapterConfiguration;JLcom/yandex/mobile/ads/impl/n7;Lcom/yandex/mobile/ads/impl/h7;)V

    goto :goto_2

    :cond_3
    :goto_1
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/x6;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/x6;-><init>()V

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/x6;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/x6;-><init>()V

    :goto_5
    check-cast p0, Lcom/yandex/mobile/ads/impl/p7;

    return-object p0
.end method
