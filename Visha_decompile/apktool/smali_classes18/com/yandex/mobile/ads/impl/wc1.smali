.class public final Lcom/yandex/mobile/ads/impl/wc1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lcom/yandex/mobile/ads/impl/wi2;
    .locals 3

    .line 17
    new-instance v0, Lcom/yandex/mobile/ads/impl/wi2;

    .line 18
    new-instance v1, Lcom/yandex/mobile/ads/impl/ui2;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ui2;-><init>()V

    .line 19
    new-instance v2, Lcom/yandex/mobile/ads/impl/ad1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/ad1;-><init>()V

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/wi2;-><init>(Lcom/yandex/mobile/ads/impl/ui2;Lcom/yandex/mobile/ads/impl/zc1;)V

    return-object v0
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/aj2;)Lcom/yandex/mobile/ads/impl/xi2;
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    const-string v0, "adConfiguration"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "volleyResponseBodyParser"

    invoke-static {v12, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v13, Lcom/yandex/mobile/ads/impl/xi2;

    .line 3
    new-instance v14, Lcom/yandex/mobile/ads/impl/cr1;

    invoke-direct {v14, v12}, Lcom/yandex/mobile/ads/impl/cr1;-><init>(Lcom/yandex/mobile/ads/impl/aj2;)V

    .line 4
    new-instance v15, Lcom/yandex/mobile/ads/impl/ui2;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/ui2;-><init>()V

    .line 5
    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseBodyParser"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v16, Lcom/yandex/mobile/ads/impl/dd1;

    .line 7
    new-instance v3, Lcom/yandex/mobile/ads/impl/s80;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/s80;-><init>()V

    .line 8
    new-instance v4, Lcom/yandex/mobile/ads/impl/iz0;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/iz0;-><init>()V

    .line 9
    new-instance v5, Lcom/yandex/mobile/ads/impl/wr1;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/wr1;-><init>()V

    .line 10
    new-instance v6, Lcom/yandex/mobile/ads/impl/js;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/js;-><init>()V

    .line 11
    new-instance v7, Lcom/yandex/mobile/ads/impl/og0;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/og0;-><init>()V

    .line 12
    new-instance v8, Lcom/yandex/mobile/ads/impl/us0;

    invoke-direct {v8}, Lcom/yandex/mobile/ads/impl/us0;-><init>()V

    .line 13
    new-instance v9, Lcom/yandex/mobile/ads/impl/md;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/md;-><init>()V

    .line 14
    new-instance v10, Lcom/yandex/mobile/ads/impl/p8;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/p8;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/dd1;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/br1;Lcom/yandex/mobile/ads/impl/s80;Lcom/yandex/mobile/ads/impl/iz0;Lcom/yandex/mobile/ads/impl/wr1;Lcom/yandex/mobile/ads/impl/js;Lcom/yandex/mobile/ads/impl/og0;Lcom/yandex/mobile/ads/impl/us0;Lcom/yandex/mobile/ads/impl/md;Lcom/yandex/mobile/ads/impl/p8;)V

    move-object v0, v13

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/xi2;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/aj2;Lcom/yandex/mobile/ads/impl/br1;Lcom/yandex/mobile/ads/impl/ui2;Lcom/yandex/mobile/ads/impl/bd1;)V

    return-object v13
.end method
