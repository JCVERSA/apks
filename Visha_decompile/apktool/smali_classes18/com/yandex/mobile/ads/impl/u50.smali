.class public final Lcom/yandex/mobile/ads/impl/u50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/g40;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g40$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g40$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/g40$a;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u50;->a:Lcom/yandex/mobile/ads/impl/g40$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 0
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 0
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final getCryptoConfig()Lcom/yandex/mobile/ads/impl/fv;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getError()Lcom/yandex/mobile/ads/impl/g40$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u50;->a:Lcom/yandex/mobile/ads/impl/g40$a;

    return-object p0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 0

    sget-object p0, Lcom/yandex/mobile/ads/impl/rm;->a:Ljava/util/UUID;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final playClearSamplesWithoutKeys()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final queryKeyStatus()Ljava/util/Map;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public final requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
