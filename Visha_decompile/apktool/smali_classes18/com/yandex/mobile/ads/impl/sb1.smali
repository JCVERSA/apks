.class public final Lcom/yandex/mobile/ads/impl/sb1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ov;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ov;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ov;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/sb1;-><init>(Lcom/yandex/mobile/ads/impl/ov;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ov;)V
    .locals 1

    .line 3
    const-string v0, "customizableMediaViewManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sb1;->a:Lcom/yandex/mobile/ads/impl/ov;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)Lcom/yandex/mobile/ads/impl/yf2;
    .locals 1

    const-string v0, "mediaView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sb1;->a:Lcom/yandex/mobile/ads/impl/ov;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->getVideoScaleType()Lcom/yandex/mobile/ads/impl/yf2;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/yandex/mobile/ads/impl/yf2;->b:Lcom/yandex/mobile/ads/impl/yf2;

    :cond_0
    return-object p0
.end method
