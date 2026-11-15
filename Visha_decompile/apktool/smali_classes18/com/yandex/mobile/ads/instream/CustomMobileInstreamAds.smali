.class final Lcom/yandex/mobile/ads/instream/CustomMobileInstreamAds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setControlsEnabled(Z)V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/ao0;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ao0$a;->a()Lcom/yandex/mobile/ads/impl/ao0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ao0;->b(Z)V

    return-void
.end method

.method public static setDiscardAdGroupOnSkip(Z)V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/ao0;->g:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ao0$a;->a()Lcom/yandex/mobile/ads/impl/ao0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ao0;->c(Z)V

    return-void
.end method
