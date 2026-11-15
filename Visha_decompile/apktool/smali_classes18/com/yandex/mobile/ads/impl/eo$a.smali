.class public final Lcom/yandex/mobile/ads/impl/eo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljavax/net/ssl/X509TrustManager;)Lcom/yandex/mobile/ads/impl/eo;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rh1;->a()Lcom/yandex/mobile/ads/impl/rh1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/rh1;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/yandex/mobile/ads/impl/eo;

    move-result-object p0

    return-object p0
.end method
