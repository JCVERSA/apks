.class public final Lcom/yandex/mobile/ads/impl/u22;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;I)Lcom/yandex/mobile/ads/impl/zs;
    .locals 9

    const/4 v0, 0x1

    const-string v1, "context"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/pj;->c:Lcom/yandex/mobile/ads/impl/pj$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ju1;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pj;->values()[Lcom/yandex/mobile/ads/impl/pj;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/pj;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v6

    goto :goto_2

    :cond_1
    add-int/2addr v5, v0

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    sget-object v3, Lcom/yandex/mobile/ads/impl/pj;->d:Lcom/yandex/mobile/ads/impl/pj;

    :cond_3
    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->d:Lcom/yandex/mobile/ads/impl/kf1;

    const-string v2, "bannerSizeCalculationType"

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v4, :cond_8

    if-eq v4, v0, :cond_7

    if-eq v4, v7, :cond_6

    if-eq v4, v6, :cond_5

    if-ne v4, v5, :cond_4

    new-instance v4, Lcom/yandex/mobile/ads/impl/gz0;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/gz0;-><init>()V

    goto :goto_3

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    new-instance v4, Lcom/yandex/mobile/ads/impl/qt1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/qt1;-><init>()V

    goto :goto_3

    :cond_6
    new-instance v4, Lcom/yandex/mobile/ads/impl/pt1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/pt1;-><init>()V

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/yandex/mobile/ads/impl/rn1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/rn1;-><init>()V

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/yandex/mobile/ads/impl/vr;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/vr;-><init>()V

    :goto_3
    invoke-interface {v4, p0, p1, v1}, Lcom/yandex/mobile/ads/impl/jj;->a(Landroid/content/Context;ILcom/yandex/mobile/ads/impl/kf1;)I

    move-result v1

    new-instance v4, Lcom/yandex/mobile/ads/impl/rb0;

    sget-object v8, Lcom/yandex/mobile/ads/impl/gz1$a;->e:Lcom/yandex/mobile/ads/impl/gz1$a;

    invoke-direct {v4, p1, v1, v8}, Lcom/yandex/mobile/ads/impl/rb0;-><init>(IILcom/yandex/mobile/ads/impl/gz1$a;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_d

    if-eq v2, v0, :cond_c

    if-eq v2, v7, :cond_b

    if-eq v2, v6, :cond_a

    if-ne v2, v5, :cond_9

    new-instance v0, Lcom/yandex/mobile/ads/impl/gz0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gz0;-><init>()V

    goto :goto_4

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    new-instance v0, Lcom/yandex/mobile/ads/impl/qt1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/qt1;-><init>()V

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/yandex/mobile/ads/impl/pt1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/pt1;-><init>()V

    goto :goto_4

    :cond_c
    new-instance v0, Lcom/yandex/mobile/ads/impl/rn1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/rn1;-><init>()V

    goto :goto_4

    :cond_d
    new-instance v0, Lcom/yandex/mobile/ads/impl/vr;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vr;-><init>()V

    :goto_4
    invoke-interface {v0, p0, p1, v1}, Lcom/yandex/mobile/ads/impl/jj;->a(Landroid/content/Context;ILcom/yandex/mobile/ads/impl/kf1;)I

    move-result v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/rb0;

    invoke-direct {v1, p1, v0, v8}, Lcom/yandex/mobile/ads/impl/rb0;-><init>(IILcom/yandex/mobile/ads/impl/gz1$a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/pf1;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p1, p0, v4, v1}, Lcom/yandex/mobile/ads/impl/pf1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rb0;Lcom/yandex/mobile/ads/impl/rb0;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/zs;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/zs;-><init>(Lcom/yandex/mobile/ads/impl/gz1;)V

    return-object p0
.end method
