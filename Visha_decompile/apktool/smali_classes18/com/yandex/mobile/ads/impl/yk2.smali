.class public final Lcom/yandex/mobile/ads/impl/yk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pa2;

.field private final b:Lcom/yandex/mobile/ads/impl/rn0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pa2;Lcom/yandex/mobile/ads/impl/rn0;)V
    .locals 1

    const-string v0, "vastUrlConfigurator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamHostChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yk2;->a:Lcom/yandex/mobile/ads/impl/pa2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/yk2;->b:Lcom/yandex/mobile/ads/impl/rn0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/nd2;Lcom/yandex/mobile/ads/impl/qk2;)Lcom/yandex/mobile/ads/impl/ta2;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "context"

    invoke-static {p1, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "adConfiguration"

    invoke-static {p2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "requestConfigurationParametersProvider"

    invoke-static {v3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "wrapperAd"

    move-object/from16 v10, p4

    invoke-static {v10, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "reportParametersProvider"

    invoke-static {v4, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "requestListener"

    invoke-static {v5, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/yandex/mobile/ads/impl/mb2;->k()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v9, ""

    :cond_0
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/yk2;->b:Lcom/yandex/mobile/ads/impl/rn0;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/yandex/mobile/ads/impl/rn0;->a(Landroid/net/Uri;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/yk2;->a:Lcom/yandex/mobile/ads/impl/pa2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "uri"

    invoke-static {v11, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/oa2;

    invoke-direct {v6, v0, v3, p2, p1}, Lcom/yandex/mobile/ads/impl/oa2;-><init>(Lcom/yandex/mobile/ads/impl/pa2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/o3;Landroid/content/Context;)V

    invoke-static {v11, v6}, Lcom/yandex/mobile/ads/impl/in1$a;->a(Landroid/net/Uri;Le74;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "toString(...)"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, v9

    :goto_0
    new-instance v6, Lcom/yandex/mobile/ads/impl/zk2;

    invoke-direct {v6, v4}, Lcom/yandex/mobile/ads/impl/zk2;-><init>(Lcom/yandex/mobile/ads/impl/nd2;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/zi2;

    invoke-direct {v4, v5}, Lcom/yandex/mobile/ads/impl/zi2;-><init>(Lcom/yandex/mobile/ads/impl/dq1;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/ta2;

    new-instance v7, Lcom/yandex/mobile/ads/impl/ca2;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    invoke-direct {v7, p1, v0}, Lcom/yandex/mobile/ads/impl/ca2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/ta2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/zi2;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/zk2;Lcom/yandex/mobile/ads/impl/ca2;)V

    return-object v8
.end method
