.class public final Lcom/yandex/mobile/ads/impl/rt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/mobile/ads/impl/z2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/et;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamVideoAd"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rt0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rt0;->b:Landroid/content/Context;

    new-instance p1, Lcom/yandex/mobile/ads/impl/z2;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/et;->a()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/z2;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rt0;->c:Lcom/yandex/mobile/ads/impl/z2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gt;)Lcom/yandex/mobile/ads/impl/qt0;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "coreInstreamAdBreak"

    move-object/from16 v9, p1

    invoke-static {v9, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/qt0;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/rt0;->b:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v10, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/rt0;->a:Lcom/yandex/mobile/ads/impl/bv1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/rt0;->c:Lcom/yandex/mobile/ads/impl/z2;

    new-instance v12, Lcom/yandex/mobile/ads/impl/am0;

    invoke-direct {v12}, Lcom/yandex/mobile/ads/impl/am0;-><init>()V

    new-instance v13, Lcom/yandex/mobile/ads/impl/mm0;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/mm0;-><init>()V

    new-instance v14, Lcom/yandex/mobile/ads/impl/xt0;

    invoke-direct {v14}, Lcom/yandex/mobile/ads/impl/xt0;-><init>()V

    new-instance v15, Lcom/yandex/mobile/ads/impl/nb2;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/nb2;-><init>()V

    new-instance v16, Lcom/yandex/mobile/ads/impl/tt0;

    move-object/from16 v2, v16

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p1

    move-object v6, v0

    move-object v7, v14

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/yandex/mobile/ads/impl/tt0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/xt0;Lcom/yandex/mobile/ads/impl/am0;)V

    move-object v2, v1

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/yandex/mobile/ads/impl/qt0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/gt;Lcom/yandex/mobile/ads/impl/z2;Lcom/yandex/mobile/ads/impl/am0;Lcom/yandex/mobile/ads/impl/mm0;Lcom/yandex/mobile/ads/impl/xt0;Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/tt0;)V

    return-object v1
.end method
