.class public final Lcom/yandex/mobile/ads/impl/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ts;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/mobile/ads/impl/w1;

.field private final d:Lcom/yandex/mobile/ads/impl/s8;

.field private e:Lcom/yandex/mobile/ads/impl/x71;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/y4;->a()Lcom/yandex/mobile/ads/impl/w1;

    move-result-object v4

    .line 2
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/y4;->b()Lcom/yandex/mobile/ads/impl/s8;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/ah;-><init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/w1;Lcom/yandex/mobile/ads/impl/s8;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/ts;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/w1;Lcom/yandex/mobile/ads/impl/s8;)V
    .locals 1

    .line 4
    const-string v0, "adInfoReportDataProviderFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adType"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adAdapterReportDataProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponseReportDataProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ah;->a:Lcom/yandex/mobile/ads/impl/ts;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ah;->b:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ah;->c:Lcom/yandex/mobile/ads/impl/w1;

    .line 9
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ah;->d:Lcom/yandex/mobile/ads/impl/s8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pp1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ah;->d:Lcom/yandex/mobile/ads/impl/s8;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/s8;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ah;->a:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ah;->b:Ljava/lang/String;

    const-string v2, "ad_id"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ah;->c:Lcom/yandex/mobile/ads/impl/w1;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/w1;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ah;->e:Lcom/yandex/mobile/ads/impl/x71;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/x71;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/qp1;->a(Lcom/yandex/mobile/ads/impl/pp1;Lcom/yandex/mobile/ads/impl/pp1;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/x71;)V
    .locals 1

    .line 7
    const-string v0, "reportParameterManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ah;->e:Lcom/yandex/mobile/ads/impl/x71;

    return-void
.end method
