.class public final Lcom/yandex/mobile/ads/impl/fq1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/mobile/ads/impl/n11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/n11;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/n11$a;->a()Lcom/yandex/mobile/ads/impl/n11;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/fq1;->a:Lcom/yandex/mobile/ads/impl/n11;

    return-void
.end method

.method public static a(JLcom/yandex/mobile/ads/impl/up1;Lcom/yandex/mobile/ads/impl/xc1;)V
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "request"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/up1;->b()[B

    move-result-object v2

    const-string v3, "UNKNOWN_CONTENT"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Lg1a;->B([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v2

    goto :goto_0

    :catch_0
    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v11, v4

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    if-eqz v2, :cond_2

    instance-of v5, v0, Lcom/yandex/mobile/ads/impl/tj0;

    if-eqz v5, :cond_1

    const-string v3, "IMAGE_CONTENT"

    :catch_1
    :goto_1
    move-object v14, v3

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {v2}, Lg1a;->B([B)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    move-object v14, v4

    :goto_2
    sget-object v5, Lcom/yandex/mobile/ads/impl/fq1;->a:Lcom/yandex/mobile/ads/impl/n11;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/up1;->f()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "GET"

    :goto_3
    move-object v8, v2

    goto :goto_4

    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const-string v2, "POST"

    goto :goto_3

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const-string v2, "PUT"

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    const-string v2, "DELETE"

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    const-string v2, "HEAD"

    goto :goto_3

    :cond_7
    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    const-string v2, "OPTIONS"

    goto :goto_3

    :cond_8
    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    const-string v2, "TRACE"

    goto :goto_3

    :cond_9
    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    const-string v2, "PATCH"

    goto :goto_3

    :cond_a
    const-string v2, "UNKNOWN"

    goto :goto_3

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/up1;->l()Ljava/lang/String;

    move-result-object v9

    const-string v2, "getUrl(...)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/up1;->e()Ljava/util/Map;

    move-result-object v10

    if-eqz v1, :cond_b

    iget v0, v1, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_b
    move-object v12, v4

    :goto_5
    if-eqz v1, :cond_c

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    :cond_c
    move-object v13, v4

    move-wide v6, p0

    invoke-virtual/range {v5 .. v14}, Lcom/yandex/mobile/ads/impl/n11;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
