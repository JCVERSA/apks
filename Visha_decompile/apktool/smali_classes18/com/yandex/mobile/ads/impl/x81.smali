.class public final Lcom/yandex/mobile/ads/impl/x81;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/w81;

.field private final b:Lcom/yandex/mobile/ads/impl/w81;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/j51;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/j51;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/km1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/km1;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/x81;-><init>(Lcom/yandex/mobile/ads/impl/w81;Lcom/yandex/mobile/ads/impl/w81;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/w81;Lcom/yandex/mobile/ads/impl/w81;)V
    .locals 1

    .line 4
    const-string v0, "nativeAdCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoAdCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x81;->a:Lcom/yandex/mobile/ads/impl/w81;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x81;->b:Lcom/yandex/mobile/ads/impl/w81;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gr1;)Lcom/yandex/mobile/ads/impl/w81;
    .locals 1

    const-string v0, "responseNativeType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x81;->b:Lcom/yandex/mobile/ads/impl/w81;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x81;->a:Lcom/yandex/mobile/ads/impl/w81;

    :goto_0
    return-object p0
.end method
