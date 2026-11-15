.class public final Lcom/yandex/mobile/ads/impl/ru1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/k50;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/k50;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k50;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ru1;->a:Lcom/yandex/mobile/ads/impl/k50;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)Ljava/lang/String;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentConfiguration"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensitiveModeChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/kx1;->b(Landroid/content/Context;)Z

    move-result p2

    new-instance v0, Lcom/yandex/mobile/ads/impl/fb0$a;

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/fb0$a;-><init>(Z)V

    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/o50;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->j(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/o50;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/mobile/ads/impl/fb0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/jc;->a()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/jc;->b()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/lc;Z)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/jc;->c()Lcom/yandex/mobile/ads/impl/lc;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/lc;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->L0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->l(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->k(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->K0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/kx1;->a(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Z)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/o50;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/fb0$a;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->P0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/fb0$a;->Q0()Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object p2

    new-instance p3, Lcom/yandex/mobile/ads/impl/fb0;

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/yandex/mobile/ads/impl/fb0;-><init>(Lcom/yandex/mobile/ads/impl/fb0$a;I)V

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/fb0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/o50;->f()Ljava/util/List;

    move-result-object v1

    sget-object v7, Lcom/yandex/mobile/ads/impl/qu1;->b:Lcom/yandex/mobile/ads/impl/qu1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, "&"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 p3, 0x2

    if-ge v0, p3, :cond_1

    aget-object p3, p2, v0

    invoke-static {p3}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x3e

    const/4 v9, 0x0

    const-string v2, "&"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ru1;->a:Lcom/yandex/mobile/ads/impl/k50;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/k50;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
