.class public final Lcom/yandex/mobile/ads/impl/f31;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/sg2;)Lcom/yandex/mobile/ads/impl/ug2;
    .locals 1

    const-string v0, "videoViewProvider"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ug2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ug2;-><init>(Lcom/yandex/mobile/ads/impl/sg2;)V

    return-object v0
.end method
