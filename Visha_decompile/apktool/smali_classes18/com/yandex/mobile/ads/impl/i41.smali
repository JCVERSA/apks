.class public final Lcom/yandex/mobile/ads/impl/i41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/s01;

.field private final b:Lcom/yandex/mobile/ads/impl/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfoReportDataProviderFactory"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->f()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/jn2;->a:Lcom/yandex/mobile/ads/impl/jn2;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object p2

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->b()Lcom/yandex/mobile/ads/impl/ol2;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/yandex/mobile/ads/impl/nd;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i41;->a:Lcom/yandex/mobile/ads/impl/s01;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ah;

    invoke-direct {p1, p3, p4, p5}, Lcom/yandex/mobile/ads/impl/ah;-><init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i41;->b:Lcom/yandex/mobile/ads/impl/ah;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 1

    .line 9
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i41;->b:Lcom/yandex/mobile/ads/impl/ah;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ah;->a(Lcom/yandex/mobile/ads/impl/x71;)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/op1$b;)V
    .locals 4

    .line 1
    const-string v0, "assetNames"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i41;->b:Lcom/yandex/mobile/ads/impl/ah;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ah;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v1

    .line 3
    const-string v2, "assets"

    invoke-virtual {v1, p1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v2

    .line 6
    const-string v3, "reportData"

    invoke-static {v1, p2, v0, v2, v3}, Lcom/yandex/mobile/ads/impl/df1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/op1$b;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i41;->a:Lcom/yandex/mobile/ads/impl/s01;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method
