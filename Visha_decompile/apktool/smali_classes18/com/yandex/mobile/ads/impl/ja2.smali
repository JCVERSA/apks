.class public final Lcom/yandex/mobile/ads/impl/ja2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pa2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pa2;)V
    .locals 1

    const-string v0, "vastUrlConfigurator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ja2;->a:Lcom/yandex/mobile/ads/impl/pa2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/aa2;)Lcom/yandex/mobile/ads/impl/w92;
    .locals 12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v0, p4

    move-object/from16 v8, p5

    move-object/from16 v3, p6

    const-string v4, "context"

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adConfiguration"

    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "requestConfiguration"

    move-object v7, p3

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "requestConfigurationParametersProvider"

    invoke-static {v0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "requestTag"

    invoke-static {v8, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "requestListener"

    invoke-static {v3, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ha2;->a()Lcom/yandex/mobile/ads/impl/p2;

    move-result-object v9

    new-instance v10, Lcom/yandex/mobile/ads/impl/a8;

    invoke-direct {v10, v9}, Lcom/yandex/mobile/ads/impl/a8;-><init>(Lcom/yandex/mobile/ads/impl/p2;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/la2;

    invoke-direct {v9, v10}, Lcom/yandex/mobile/ads/impl/la2;-><init>(Lcom/yandex/mobile/ads/impl/a8;)V

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/a8;->a()Lcom/yandex/mobile/ads/impl/t9;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/t9;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move-object v11, p0

    iget-object v11, v11, Lcom/yandex/mobile/ads/impl/ja2;->a:Lcom/yandex/mobile/ads/impl/pa2;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "uri"

    invoke-static {v10, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/oa2;

    invoke-direct {v4, v11, v0, p2, p1}, Lcom/yandex/mobile/ads/impl/oa2;-><init>(Lcom/yandex/mobile/ads/impl/pa2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;)V

    invoke-static {v10, v4}, Lcom/yandex/mobile/ads/impl/in1$a;->a(Landroid/net/Uri;Le74;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "toString(...)"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/yandex/mobile/ads/impl/zi2;

    invoke-direct {v5, v3}, Lcom/yandex/mobile/ads/impl/zi2;-><init>(Lcom/yandex/mobile/ads/impl/dq1;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/w92;

    new-instance v11, Lcom/yandex/mobile/ads/impl/ca2;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    invoke-direct {v11, p1, v0}, Lcom/yandex/mobile/ads/impl/ca2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    move-object v0, v10

    move-object v3, v4

    move-object v4, v5

    move-object v5, p3

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/w92;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/zi2;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/la2;Lcom/yandex/mobile/ads/impl/ca2;)V

    invoke-virtual {v10, v8}, Lcom/yandex/mobile/ads/impl/up1;->b(Ljava/lang/Object;)V

    return-object v10
.end method
