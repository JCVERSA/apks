.class public final Lcom/yandex/mobile/ads/impl/eu1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/kx1;

.field private final c:Lcom/yandex/mobile/ads/impl/d32;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/d32;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/d32;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/eu1;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/d32;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/d32;)V
    .locals 1

    .line 4
    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensitiveModeChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringEncryptor"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/eu1;->a:Lcom/yandex/mobile/ads/impl/g5;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/eu1;->b:Lcom/yandex/mobile/ads/impl/kx1;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/eu1;->c:Lcom/yandex/mobile/ads/impl/d32;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;Lcom/yandex/mobile/ads/impl/dl;Lcom/yandex/mobile/ads/impl/hu1;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "context"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "advertisingConfiguration"

    invoke-static {v2, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "environmentConfiguration"

    invoke-static {v3, v5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/eu1;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v6, Lcom/yandex/mobile/ads/impl/f5;->A:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "adLoadingPhaseType"

    invoke-static {v6, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/uq;

    invoke-direct {v8, v2, v3}, Lcom/yandex/mobile/ads/impl/uq;-><init>(Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/o50;)V

    sget-object v2, Lcom/yandex/mobile/ads/impl/sx1;->a:Lcom/yandex/mobile/ads/impl/sx1$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/sx1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sx1;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/tx1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tx1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/yandex/mobile/ads/impl/zc;->a()Lcom/yandex/mobile/ads/impl/d92;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/d92;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/yandex/mobile/ads/impl/ox1;->a:Lcom/yandex/mobile/ads/impl/ox1$a;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/ox1$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ox1;

    move-result-object v9

    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/ox1;->a()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v11

    const-string v12, "getNetworkInterfaces(...)"

    invoke-static {v11, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, La81;->y(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/NetworkInterface;

    invoke-virtual {v12}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v12

    const-string v13, "getInetAddresses(...)"

    invoke-static {v12, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, La81;->y(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    instance-of v14, v13, Ljava/net/Inet6Address;

    if-eqz v14, :cond_1

    move-object v14, v13

    check-cast v14, Ljava/net/Inet6Address;

    const-string v15, "<this>"

    invoke-static {v14, v15}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v14

    if-eqz v14, :cond_1

    aget-byte v14, v14, v10

    and-int/lit16 v14, v14, 0xf0

    const/16 v15, 0x20

    if-eq v14, v15, :cond_2

    const/16 v15, 0x30

    if-ne v14, v15, :cond_1

    :cond_2
    check-cast v13, Ljava/net/Inet6Address;

    invoke-virtual {v13}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_3
    move-object v11, v7

    :goto_0
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/eu1;->b:Lcom/yandex/mobile/ads/impl/kx1;

    new-instance v13, Lcom/yandex/mobile/ads/impl/uq1;

    invoke-direct {v13}, Lcom/yandex/mobile/ads/impl/uq1;-><init>()V

    new-instance v14, Lcom/yandex/mobile/ads/impl/gf1;

    invoke-static/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/rs0;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ps0;

    move-result-object v15

    invoke-direct {v14, v1, v15}, Lcom/yandex/mobile/ads/impl/gf1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ps0;)V

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "sensitiveModeChecker"

    invoke-static {v12, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "configuration"

    invoke-static {v8, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "resourceUtils"

    invoke-static {v13, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "optOutRepository"

    invoke-static {v14, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v12, v8, v13, v14}, Lcom/yandex/mobile/ads/impl/fb0$b;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/uq;Lcom/yandex/mobile/ads/impl/uq1;Lcom/yandex/mobile/ads/impl/gf1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v4

    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/yandex/mobile/ads/impl/dl;->a()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v8

    goto :goto_1

    :cond_4
    move-object v8, v7

    :goto_1
    invoke-virtual {v4, v8}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/ts;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v4

    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcom/yandex/mobile/ads/impl/dl;->c()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v8

    goto :goto_2

    :cond_5
    move-object v8, v7

    :goto_2
    invoke-virtual {v4, v1, v8}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gz1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/yandex/mobile/ads/impl/fb0$a;->h(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/fb0$a;->i(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/yandex/mobile/ads/impl/fb0$a;->g(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/yandex/mobile/ads/impl/fb0$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v2

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Lcom/yandex/mobile/ads/impl/hu1;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v2

    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/yandex/mobile/ads/impl/dl;->b()Ljava/util/Map;

    move-result-object v7

    :cond_6
    invoke-virtual {v2, v7}, Lcom/yandex/mobile/ads/impl/fb0$a;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/fb0$a;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/fb0;

    invoke-direct {v3, v2, v10}, Lcom/yandex/mobile/ads/impl/fb0;-><init>(Lcom/yandex/mobile/ads/impl/fb0$a;I)V

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/fb0;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/eu1;->c:Lcom/yandex/mobile/ads/impl/d32;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/d32;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    return-object v0
.end method
