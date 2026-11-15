.class public final Lcom/yandex/mobile/ads/impl/zz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a01;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/a01;)V
    .locals 1

    const-string v0, "networksDataProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zz0;->a:Lcom/yandex/mobile/ads/impl/a01;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 14

    const/4 v0, 0x1

    const-string v1, "mediationNetworks"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/qx;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qx;->b()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v13, Lcom/yandex/mobile/ads/impl/mz0$b;

    new-array v8, v0, [C

    const/16 v7, 0x2e

    const/4 v9, 0x0

    aput-char v7, v8, v9

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, v6

    invoke-static/range {v7 .. v12}, Lj1a;->N0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ly71;->m(Ljava/util/List;)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-static {v7, v8}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_0

    const-string v7, ""

    :cond_0
    invoke-direct {v13, v7, v6}, Lcom/yandex/mobile/ads/impl/mz0$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/yandex/mobile/ads/impl/mz0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qx;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qx;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "undefined"

    :cond_2
    invoke-direct {v4, v6, v3, v5}, Lcom/yandex/mobile/ads/impl/mz0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zz0;->a:Lcom/yandex/mobile/ads/impl/a01;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/a01;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
