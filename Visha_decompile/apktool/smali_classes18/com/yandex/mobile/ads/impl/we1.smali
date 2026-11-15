.class public final Lcom/yandex/mobile/ads/impl/we1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/od2;Lcom/yandex/mobile/ads/impl/ad2;)Lcom/yandex/mobile/ads/impl/ga2;
    .locals 2

    const-string v0, "videoAdPosition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/yandex/mobile/ads/impl/oj1;->f:Lcom/yandex/mobile/ads/impl/oj1;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yandex/mobile/ads/impl/oj1;->f:Lcom/yandex/mobile/ads/impl/oj1;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/yandex/mobile/ads/impl/oj1;->e:Lcom/yandex/mobile/ads/impl/oj1;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/yandex/mobile/ads/impl/oj1;->d:Lcom/yandex/mobile/ads/impl/oj1;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/yandex/mobile/ads/impl/oj1;->c:Lcom/yandex/mobile/ads/impl/oj1;

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/od2;->a()J

    move-result-wide v0

    long-to-float p0, v0

    const-wide/16 v0, 0x3e8

    long-to-float v0, v0

    div-float/2addr p0, v0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/ga2;->a(FLcom/yandex/mobile/ads/impl/oj1;)Lcom/yandex/mobile/ads/impl/ga2;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ga2;->a(Lcom/yandex/mobile/ads/impl/oj1;)Lcom/yandex/mobile/ads/impl/ga2;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method
