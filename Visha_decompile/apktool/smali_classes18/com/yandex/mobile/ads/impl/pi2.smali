.class public final Lcom/yandex/mobile/ads/impl/pi2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b8;

.field private final b:Lcom/yandex/mobile/ads/impl/ri2;

.field private final c:Lcom/yandex/mobile/ads/impl/bq1;

.field private final d:Lcom/yandex/mobile/ads/impl/hq;

.field private final e:Lcom/yandex/mobile/ads/impl/k50;

.field private final f:Lcom/yandex/mobile/ads/impl/kx1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mobile.yandexadexchange.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/pi2;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b8;Lcom/yandex/mobile/ads/impl/ri2;Lcom/yandex/mobile/ads/impl/bq1;Lcom/yandex/mobile/ads/impl/hq;Lcom/yandex/mobile/ads/impl/k50;Lcom/yandex/mobile/ads/impl/kx1;)V
    .locals 1

    const-string v0, "adRequestProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestReporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHelper"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmpRequestConfigurator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedQueryConfigurator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensitiveModeChecker"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pi2;->a:Lcom/yandex/mobile/ads/impl/b8;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pi2;->b:Lcom/yandex/mobile/ads/impl/ri2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pi2;->c:Lcom/yandex/mobile/ads/impl/bq1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/pi2;->d:Lcom/yandex/mobile/ads/impl/hq;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/pi2;->e:Lcom/yandex/mobile/ads/impl/k50;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/pi2;->f:Lcom/yandex/mobile/ads/impl/kx1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/oi2;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/qi2;)Lcom/yandex/mobile/ads/impl/ni2;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p4

    move-object/from16 v3, p5

    const-string v4, "context"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adConfiguration"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestConfiguration"

    move-object/from16 v6, p3

    invoke-static {v6, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestTag"

    invoke-static {v9, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "requestListener"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/oi2;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/oi2;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/pi2;->a:Lcom/yandex/mobile/ads/impl/b8;

    invoke-interface/range {p3 .. p3}, Lcom/yandex/mobile/ads/impl/oi2;->getParameters()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/b8;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/o3;->k()Lcom/yandex/mobile/ads/impl/o50;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/o50;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/o50;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/o50;->a()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    sget-object v10, Lcom/yandex/mobile/ads/impl/pi2;->g:Ljava/lang/String;

    :cond_1
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v13, "v2"

    invoke-virtual {v10, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v13, "vmap"

    invoke-virtual {v10, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v10, "video-category-id"

    invoke-virtual {v5, v10, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/pi2;->f:Lcom/yandex/mobile/ads/impl/kx1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/kx1;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pi2;->c:Lcom/yandex/mobile/ads/impl/bq1;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "builder"

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uuid"

    const-string v10, "key"

    invoke-static {v7, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "<this>"

    invoke-static {v5, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v7, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/pi2;->c:Lcom/yandex/mobile/ads/impl/bq1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "mauid"

    invoke-static {v4, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v13}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v10}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v4, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pi2;->d:Lcom/yandex/mobile/ads/impl/hq;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5}, Lcom/yandex/mobile/ads/impl/hq;->a(Landroid/content/Context;Landroid/net/Uri$Builder;)V

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/yandex/mobile/ads/impl/q50;

    invoke-direct {v4, v1, v2}, Lcom/yandex/mobile/ads/impl/q50;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    invoke-virtual {v4, v1, v5}, Lcom/yandex/mobile/ads/impl/q50;->a(Landroid/content/Context;Landroid/net/Uri$Builder;)V

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pi2;->e:Lcom/yandex/mobile/ads/impl/k50;

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "toString(...)"

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Lcom/yandex/mobile/ads/impl/k50;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/yandex/mobile/ads/impl/zi2;

    invoke-direct {v5, v3}, Lcom/yandex/mobile/ads/impl/zi2;-><init>(Lcom/yandex/mobile/ads/impl/dq1;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/ni2;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/pi2;->b:Lcom/yandex/mobile/ads/impl/ri2;

    new-instance v8, Lcom/yandex/mobile/ads/impl/mi2;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/mi2;-><init>()V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wc1;->a()Lcom/yandex/mobile/ads/impl/wi2;

    move-result-object v11

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/ni2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/zi2;Lcom/yandex/mobile/ads/impl/oi2;Lcom/yandex/mobile/ads/impl/ri2;Lcom/yandex/mobile/ads/impl/mi2;Lcom/yandex/mobile/ads/impl/vi2;)V

    invoke-virtual {v10, v9}, Lcom/yandex/mobile/ads/impl/up1;->b(Ljava/lang/Object;)V

    return-object v10
.end method
