.class public interface abstract Lcom/yandex/mobile/ads/impl/g40;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/g40$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/yandex/mobile/ads/impl/g40;Lcom/yandex/mobile/ads/impl/g40;)V
    .locals 1
    .param p0    # Lcom/yandex/mobile/ads/impl/g40;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/yandex/mobile/ads/impl/g40;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/g40;->b(Lcom/yandex/mobile/ads/impl/h40$a;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/g40;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/yandex/mobile/ads/impl/h40$a;)V
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/yandex/mobile/ads/impl/h40$a;)V
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getCryptoConfig()Lcom/yandex/mobile/ads/impl/fv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getError()Lcom/yandex/mobile/ads/impl/g40$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSchemeUuid()Ljava/util/UUID;
.end method

.method public abstract getState()I
.end method

.method public playClearSamplesWithoutKeys()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requiresSecureDecoder(Ljava/lang/String;)Z
.end method
