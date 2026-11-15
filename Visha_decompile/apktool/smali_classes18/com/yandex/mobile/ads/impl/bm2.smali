.class public final Lcom/yandex/mobile/ads/impl/bm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/instream/InstreamAdBreak;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gt;

.field private final b:Lcom/yandex/mobile/ads/impl/dm2;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/gt;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/dm2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dm2;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/bm2;-><init>(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/dm2;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/dm2;)V
    .locals 1

    .line 3
    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBreakPositionAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bm2;->a:Lcom/yandex/mobile/ads/impl/gt;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bm2;->b:Lcom/yandex/mobile/ads/impl/dm2;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/bm2;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/bm2;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/bm2;->a:Lcom/yandex/mobile/ads/impl/gt;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bm2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getAdBreakPosition()Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bm2;->b:Lcom/yandex/mobile/ads/impl/dm2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bm2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gt;->b()Lcom/yandex/mobile/ads/impl/ht;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "corePosition"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ht;->a()Lcom/yandex/mobile/ads/impl/ht$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition$Type;->POSITION:Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition$Type;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition$Type;->MILLISECONDS:Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition$Type;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition$Type;->PERCENTS:Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition$Type;

    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ht;->b()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition;-><init>(Lcom/yandex/mobile/ads/instream/InstreamAdBreakPosition$Type;J)V

    return-object v1
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bm2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gt;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bm2;->a:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
