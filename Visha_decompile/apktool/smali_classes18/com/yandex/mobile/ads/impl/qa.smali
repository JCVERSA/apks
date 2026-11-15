.class public final Lcom/yandex/mobile/ads/impl/qa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Z
    .locals 3

    .line 10
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/content/Context;)I

    move-result v0

    .line 12
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/content/Context;)I

    move-result v1

    .line 13
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v2

    .line 14
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result p0

    if-gt v2, v0, :cond_0

    if-gt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;Lcom/yandex/mobile/ads/impl/gz1;)Z
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sizeInfo"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "containerSizeInfo"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v0

    .line 4
    invoke-interface {p2, p0}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result v1

    .line 5
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v2

    .line 6
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result v3

    .line 7
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v5, :cond_1

    const/4 v6, 0x2

    if-eq p2, v6, :cond_3

    const/4 v6, 0x3

    if-ne p2, v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-gt v2, v0, :cond_4

    if-lez v0, :cond_4

    if-le v3, v1, :cond_3

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    if-gt v2, v0, :cond_4

    if-lez v0, :cond_4

    if-gt v3, v1, :cond_4

    :cond_3
    :goto_1
    move p2, v5

    goto :goto_2

    :cond_4
    move p2, v4

    .line 9
    :goto_2
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/qa;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Z

    move-result p0

    if-eqz p2, :cond_5

    if-eqz p0, :cond_5

    move v4, v5

    :cond_5
    return v4
.end method

.method public static final b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result p0

    if-gt v2, v0, :cond_0

    if-gt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
