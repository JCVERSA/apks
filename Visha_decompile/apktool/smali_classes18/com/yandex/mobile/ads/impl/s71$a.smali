.class final Lcom/yandex/mobile/ads/impl/s71$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/s71;->b(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/s71;

.field final synthetic c:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

.field final synthetic d:Lcom/yandex/mobile/ads/impl/gr1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/s71;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s71$a;->b:Lcom/yandex/mobile/ads/impl/s71;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s71$a;->c:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s71$a;->d:Lcom/yandex/mobile/ads/impl/gr1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71$a;->b:Lcom/yandex/mobile/ads/impl/s71;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71$a;->c:Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s71$a;->d:Lcom/yandex/mobile/ads/impl/gr1;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/s71;->a(Lcom/yandex/mobile/ads/impl/s71;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
