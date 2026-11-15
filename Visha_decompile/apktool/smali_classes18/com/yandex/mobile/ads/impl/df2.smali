.class public final Lcom/yandex/mobile/ads/impl/df2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/ro0;)Lcom/yandex/mobile/ads/impl/cf2;
    .locals 1

    const-string v0, "videoPlayerController"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamVideoPresenter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/cf2;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/cf2;-><init>(Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/ro0;)V

    return-object v0
.end method
