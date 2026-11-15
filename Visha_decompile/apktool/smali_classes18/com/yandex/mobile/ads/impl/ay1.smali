.class public final Lcom/yandex/mobile/ads/impl/ay1;
.super Lcf2;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vo;

.field private b:Lcom/yandex/mobile/ads/impl/k20;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ay1;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    new-instance p1, Lcom/yandex/mobile/ads/impl/vo;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/vo;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ay1;-><init>(Lcom/yandex/mobile/ads/impl/vo;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vo;)V
    .locals 1

    .line 4
    const-string v0, "clickConnectorAggregator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcf2;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ay1;->a:Lcom/yandex/mobile/ads/impl/vo;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/uo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ay1;->a:Lcom/yandex/mobile/ads/impl/vo;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vo;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/uo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/uo;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/uo;-><init>()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ay1;->a:Lcom/yandex/mobile/ads/impl/vo;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/vo;->a(ILcom/yandex/mobile/ads/impl/uo;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/k20;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ay1;->b:Lcom/yandex/mobile/ads/impl/k20;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/k20;->a(Lcom/yandex/mobile/ads/impl/vo;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ay1;->a:Lcom/yandex/mobile/ads/impl/vo;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/k20;->a(Lcom/yandex/mobile/ads/impl/vo;)V

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ay1;->b:Lcom/yandex/mobile/ads/impl/k20;

    return-void
.end method

.method public final handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z
    .locals 1

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ay1;->b:Lcom/yandex/mobile/ads/impl/k20;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/k20;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final handleAction(Lwp2;Lsv2;Loj3;)Z
    .locals 1

    .line 4
    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Lcf2;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ay1;->b:Lcom/yandex/mobile/ads/impl/k20;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/k20;->handleAction(Lwp2;Lsv2;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
