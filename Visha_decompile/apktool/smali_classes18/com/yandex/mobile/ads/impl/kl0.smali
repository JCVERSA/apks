.class public final Lcom/yandex/mobile/ads/impl/kl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lu95;

.field private final b:Lcom/yandex/mobile/ads/impl/uj;


# direct methods
.method public constructor <init>(Lu95;Lcom/yandex/mobile/ads/impl/uj;)V
    .locals 1

    const-string v0, "jsonSerializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataEncoder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/kl0;->a:Lu95;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/kl0;->b:Lcom/yandex/mobile/ads/impl/uj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sx;)Ljava/lang/String;
    .locals 12

    const-string v0, "reportData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/kl0;->a:Lu95;

    sget-object v1, Lu95;->d:Lu95$a;

    invoke-virtual {v1}, Lu95;->a()Ltd9;

    sget-object v1, Lcom/yandex/mobile/ads/impl/sx;->Companion:Lcom/yandex/mobile/ads/impl/sx$b;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/sx$b;->serializer()Lef5;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lu95;->b(Lnd9;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/kl0;->b:Lcom/yandex/mobile/ads/impl/uj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/uj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    new-instance p1, Lhv0;

    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-direct {p1, v0, v1}, Lhv0;-><init>(CC)V

    new-instance v0, Lhv0;

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2}, Lhv0;-><init>(CC)V

    invoke-static {p1, v0}, Li81;->H0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lu15;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lu15;-><init>(II)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lq15;

    invoke-virtual {v1}, Lq15;->nextInt()I

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p1, v1}, Li81;->L0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v10, 0x3e

    const/4 v11, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
