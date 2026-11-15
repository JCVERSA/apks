.class public final Lcom/yandex/mobile/ads/impl/e7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/w6;

.field private final c:Lcom/yandex/mobile/ads/impl/f7;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/w6;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/w6;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/f7;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/f7;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/e7;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/w6;Lcom/yandex/mobile/ads/impl/f7;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/w6;Lcom/yandex/mobile/ads/impl/f7;)V
    .locals 1

    .line 4
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityAdapterReportDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adQualityVerificationResultReportDataProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/e7;->a:Lcom/yandex/mobile/ads/impl/o3;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/e7;->b:Lcom/yandex/mobile/ads/impl/w6;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e7;->c:Lcom/yandex/mobile/ads/impl/f7;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationResult"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult$NotImplemented;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e7;->b:Lcom/yandex/mobile/ads/impl/w6;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/e7;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0, p3, v1}, Lcom/yandex/mobile/ads/impl/w6;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e7;->c:Lcom/yandex/mobile/ads/impl/f7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/f7;->b(Lcom/monetization/ads/quality/base/result/AdQualityVerificationResult;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p2

    new-instance p3, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->a0:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "reportType"

    const-string v3, "reportData"

    invoke-static {p2, v0, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object p2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p3, v0, v1, p2}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/e7;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object p2, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e7;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    :cond_0
    return-void
.end method
