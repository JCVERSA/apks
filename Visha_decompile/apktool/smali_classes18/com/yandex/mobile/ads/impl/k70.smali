.class public final Lcom/yandex/mobile/ads/impl/k70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/ah;

.field private final c:Lcom/yandex/mobile/ads/impl/sp1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ah;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfoReportDataProviderFactory"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adType"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetViewsValidationReportParametersProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/k70;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 4
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/k70;->b:Lcom/yandex/mobile/ads/impl/ah;

    .line 5
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/k70;->c:Lcom/yandex/mobile/ads/impl/sp1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/o8;Ljava/lang/String;)V
    .locals 8

    .line 6
    new-instance v6, Lcom/yandex/mobile/ads/impl/ah;

    invoke-direct {v6, p3, p4, p6}, Lcom/yandex/mobile/ads/impl/ah;-><init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p6

    invoke-interface {p6}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object p6, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 8
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v0

    .line 9
    invoke-static {p1, p6, v0}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/k70;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/ah;Lcom/yandex/mobile/ads/impl/sp1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 1

    .line 17
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k70;->b:Lcom/yandex/mobile/ads/impl/ah;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ah;->a(Lcom/yandex/mobile/ads/impl/x71;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    const-string v0, "assetNames"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k70;->b:Lcom/yandex/mobile/ads/impl/ah;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v1, "no_view_for_asset"

    const-string v2, "reason"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ah;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v1, "assets"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/k70;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->s()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/k70;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Lcom/yandex/mobile/ads/impl/f;)V

    .line 11
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    .line 12
    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->L:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 13
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v2

    .line 14
    const-string v3, "reportType"

    const-string v4, "reportData"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p1, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k70;->c:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method
