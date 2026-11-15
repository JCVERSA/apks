.class public final Lcom/yandex/mobile/ads/impl/v81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t41;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/t51;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/t51;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/t51;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/v81;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/t51;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/t51;)V
    .locals 1

    .line 3
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdFactory"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/v81;->a:Lcom/yandex/mobile/ads/impl/t51;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/r41;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/g51;)V
    .locals 10

    move-object/from16 v0, p7

    const-string v1, "context"

    move-object v3, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdBlock"

    move-object v4, p2

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imageProvider"

    move-object v5, p3

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdBinderFactory"

    move-object v6, p4

    invoke-static {p4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdFactoriesProvider"

    move-object v7, p5

    invoke-static {p5, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdControllers"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nativeAdCreationListener"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    if-le v2, v9, :cond_0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/r41;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/e51;)Lcom/yandex/mobile/ads/impl/k81;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/yandex/mobile/ads/impl/g41;

    move-object v1, p0

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/v81;->a:Lcom/yandex/mobile/ads/impl/t51;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/t51;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/s41;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/r41;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/e51;Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/q61;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/q61;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->x()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/g51;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_1
    return-void
.end method
