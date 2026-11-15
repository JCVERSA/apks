.class final Lcom/yandex/mobile/ads/impl/zm2$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/zm2;->a(Lcom/yandex/mobile/ads/impl/q61;)V
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/zm2;

.field final synthetic c:Lcom/yandex/mobile/ads/nativeads/e;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zm2;Lcom/yandex/mobile/ads/nativeads/e;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zm2$b;->b:Lcom/yandex/mobile/ads/impl/zm2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zm2$b;->c:Lcom/yandex/mobile/ads/nativeads/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zm2$b;->b:Lcom/yandex/mobile/ads/impl/zm2;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/zm2;->a(Lcom/yandex/mobile/ads/impl/zm2;)Lcom/yandex/mobile/ads/nativeads/a;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zm2$b;->c:Lcom/yandex/mobile/ads/nativeads/e;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoadListener;->onAdLoaded(Lcom/yandex/mobile/ads/nativeads/NativeAd;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
