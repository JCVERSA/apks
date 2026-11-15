.class public final synthetic Letd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ay0$a;


# instance fields
.field public final synthetic a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/s71;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/g61;


# direct methods
.method public synthetic constructor <init>(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/g61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Letd;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    iput-object p2, p0, Letd;->b:Lcom/yandex/mobile/ads/impl/s71;

    iput-object p3, p0, Letd;->c:Lcom/yandex/mobile/ads/impl/g61;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 2

    iget-object v0, p0, Letd;->a:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    iget-object v1, p0, Letd;->b:Lcom/yandex/mobile/ads/impl/s71;

    iget-object p0, p0, Letd;->c:Lcom/yandex/mobile/ads/impl/g61;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/s71;->c(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/o8;)V

    return-void
.end method
