.class public final Lcom/yandex/mobile/ads/impl/qc2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uc2;

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/uc2;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    .line 2
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/qc2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/sp1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/uc2;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportParametersProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metricaReporter"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/qc2;->a:Lcom/yandex/mobile/ads/impl/uc2;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/qc2;->b:Lcom/yandex/mobile/ads/impl/sp1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->r:Lcom/yandex/mobile/ads/impl/op1$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qc2;->a:Lcom/yandex/mobile/ads/impl/uc2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/uc2;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/op1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v3

    const-string v4, "reportType"

    const-string v5, "reportData"

    invoke-static {v1, v0, v4, v3, v5}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qc2;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, v2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method

.method public final b()V
    .locals 6

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->q:Lcom/yandex/mobile/ads/impl/op1$b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qc2;->a:Lcom/yandex/mobile/ads/impl/uc2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/uc2;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/op1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v3

    const-string v4, "reportType"

    const-string v5, "reportData"

    invoke-static {v1, v0, v4, v3, v5}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qc2;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, v2}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method
