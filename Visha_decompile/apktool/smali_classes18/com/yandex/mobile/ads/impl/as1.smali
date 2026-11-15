.class public final Lcom/yandex/mobile/ads/impl/as1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/n91;Lcom/yandex/mobile/ads/impl/f52;)Lcom/yandex/mobile/ads/impl/yc0;
    .locals 9

    const-string v0, "progressListener"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaContent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProviderContainer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n91;->a()Lcom/yandex/mobile/ads/impl/db1;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n91;->b()Lcom/yandex/mobile/ads/impl/ic1;

    move-result-object v0

    if-eqz v2, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/rb1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f52;->e()Lcom/yandex/mobile/ads/impl/xl1;

    move-result-object v5

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f52;->a()Lcom/yandex/mobile/ads/impl/z1;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/rb1;-><init>(Lcom/yandex/mobile/ads/impl/db1;Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/e91;

    sget v1, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/mg1$a;->a(Z)Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object v5

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f52;->e()Lcom/yandex/mobile/ads/impl/xl1;

    move-result-object v6

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f52;->a()Lcom/yandex/mobile/ads/impl/z1;

    move-result-object v7

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/f52;->d()Lcom/yandex/mobile/ads/impl/mz;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/e91;-><init>(Lcom/yandex/mobile/ads/impl/yl1;Lcom/yandex/mobile/ads/impl/f52;Lcom/yandex/mobile/ads/impl/mg1;Lcom/yandex/mobile/ads/impl/xl1;Lcom/yandex/mobile/ads/impl/z1;Lcom/yandex/mobile/ads/impl/mz;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
