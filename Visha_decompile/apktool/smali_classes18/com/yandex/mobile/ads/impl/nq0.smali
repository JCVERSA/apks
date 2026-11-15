.class public final Lcom/yandex/mobile/ads/impl/nq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ci;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/nq0$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q30;)V
    .locals 1

    const-string v0, "defaultDns"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/vs1;Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/vp1;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/vq1;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/vq1;->o()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result v1

    const/16 v4, 0x197

    const/4 v5, 0x1

    if-ne v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/go;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/go;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Basic"

    invoke-static {v8, v7, v5}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ab;->c()Lcom/yandex/mobile/ads/impl/q30;

    move-result-object v7

    if-nez v7, :cond_6

    :cond_5
    sget-object v7, Lcom/yandex/mobile/ads/impl/q30;->a:Lcom/yandex/mobile/ads/impl/q30;

    :cond_6
    const-string v8, "getAddress(...)"

    const-string v9, "null cannot be cast to non-null type java.net.InetSocketAddress"

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    invoke-static {v10, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v12

    if-nez v12, :cond_7

    goto :goto_3

    :cond_7
    sget-object v13, Lcom/yandex/mobile/ads/impl/nq0$a;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v13, v12

    if-ne v12, v5, :cond_8

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/yandex/mobile/ads/impl/q30;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    :goto_2
    move-object v12, v7

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-static {v7, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :goto_4
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->k()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/go;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/go;->c()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->m()Ljava/net/URL;

    move-result-object v17

    sget-object v18, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v11 .. v18}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v7

    goto :goto_8

    :cond_9
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v11

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    sget-object v12, Lcom/yandex/mobile/ads/impl/nq0$a;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    if-ne v11, v5, :cond_b

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->g()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/yandex/mobile/ads/impl/q30;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    :goto_5
    move-object v9, v7

    goto :goto_7

    :cond_b
    :goto_6
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-static {v7, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-static {v7, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :goto_7
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->i()I

    move-result v7

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->k()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/go;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/go;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/gi0;->m()Ljava/net/URL;

    move-result-object v14

    sget-object v15, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object v8, v10

    move v10, v7

    invoke-static/range {v8 .. v15}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v7

    :goto_8
    if-eqz v7, :cond_3

    if-eqz v1, :cond_c

    const-string v0, "Proxy-Authorization"

    goto :goto_9

    :cond_c
    const-string v0, "Authorization"

    :goto_9
    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getUserName(...)"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    const-string v4, "getPassword(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/go;->a()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/yandex/mobile/ads/impl/ev;->a(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/yandex/mobile/ads/impl/vp1$a;

    invoke-direct {v3, v2}, Lcom/yandex/mobile/ads/impl/vp1$a;-><init>(Lcom/yandex/mobile/ads/impl/vp1;)V

    invoke-virtual {v3, v0, v1}, Lcom/yandex/mobile/ads/impl/vp1$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vp1$a;->a()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method
