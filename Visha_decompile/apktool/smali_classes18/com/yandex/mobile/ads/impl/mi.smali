.class public final Lcom/yandex/mobile/ads/impl/mi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kg0;

.field private final b:Lcom/yandex/mobile/ads/impl/ig0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/kg0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/kg0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ig0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ig0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/mi;-><init>(Lcom/yandex/mobile/ads/impl/kg0;Lcom/yandex/mobile/ads/impl/ig0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kg0;Lcom/yandex/mobile/ads/impl/ig0;)V
    .locals 1

    .line 4
    const-string v0, "hostsProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostReachabilityRepository"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mi;->a:Lcom/yandex/mobile/ads/impl/kg0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mi;->b:Lcom/yandex/mobile/ads/impl/ig0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mi;->a:Lcom/yandex/mobile/ads/impl/kg0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/kg0;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-static {p1, v1}, Li81;->g0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/yandex/mobile/ads/impl/w82;->a:Lcom/yandex/mobile/ads/impl/w82$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/w82$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/mi;->b:Lcom/yandex/mobile/ads/impl/ig0;

    sget v5, Lcom/yandex/mobile/ads/impl/ig0;->c:I

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5, v3}, Lcom/yandex/mobile/ads/impl/ig0;->a(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    const-string v2, "mobile.yandexadexchange.net"

    :cond_4
    return-object v2
.end method
