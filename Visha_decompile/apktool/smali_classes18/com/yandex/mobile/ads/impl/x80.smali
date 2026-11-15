.class public final Lcom/yandex/mobile/ads/impl/x80;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w80;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toggle"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/impl/rs0;->b:I

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "YadPreferenceFile"

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/rs0;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ps0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/w80;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
