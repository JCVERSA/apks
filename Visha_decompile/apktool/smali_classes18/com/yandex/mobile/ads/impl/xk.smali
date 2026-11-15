.class public final Lcom/yandex/mobile/ads/impl/xk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sc1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/nk;

.field protected final b:Lcom/yandex/mobile/ads/impl/pm;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fi0;Lcom/yandex/mobile/ads/impl/pm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xk;->a:Lcom/yandex/mobile/ads/impl/nk;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xk;->b:Lcom/yandex/mobile/ads/impl/pm;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;)Lcom/yandex/mobile/ads/impl/xc1;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;)",
            "Lcom/yandex/mobile/ads/impl/xc1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/si2;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/up1;->c()Lcom/yandex/mobile/ads/impl/tm$a;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/wh0;->a(Lcom/yandex/mobile/ads/impl/tm$a;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/xk;->a:Lcom/yandex/mobile/ads/impl/nk;

    invoke-virtual {v3, v8, v0}, Lcom/yandex/mobile/ads/impl/nk;->a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/ci0;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ci0;->d()I

    move-result v12

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ci0;->c()Ljava/util/List;

    move-result-object v0

    const/16 v4, 0x130

    if-ne v12, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-static {v8, v4, v5, v0}, Lcom/yandex/mobile/ads/impl/fd1;->a(Lcom/yandex/mobile/ads/impl/up1;JLjava/util/List;)Lcom/yandex/mobile/ads/impl/xc1;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v2

    move-object v6, v3

    move-object v3, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ci0;->a()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ci0;->b()I

    move-result v5

    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/xk;->b:Lcom/yandex/mobile/ads/impl/pm;

    invoke-static {v4, v5, v6}, Lcom/yandex/mobile/ads/impl/fd1;->a(Ljava/io/InputStream;ILcom/yandex/mobile/ads/impl/pm;)[B

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    new-array v2, v4, [B

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-static {v4, v5, v8, v2, v12}, Lcom/yandex/mobile/ads/impl/fd1;->a(JLcom/yandex/mobile/ads/impl/up1;[BI)V

    const/16 v4, 0xc8

    if-lt v12, v4, :cond_2

    const/16 v4, 0x12b

    if-gt v12, v4, :cond_2

    new-instance v4, Lcom/yandex/mobile/ads/impl/xc1;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v15, v5, v9

    const/4 v14, 0x0

    move-object v11, v4

    move-object v13, v2

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/yandex/mobile/ads/impl/xc1;-><init>(I[BZJLjava/util/List;)V

    return-object v4

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v6, v2

    move-object v7, v6

    :goto_2
    move-object/from16 v2, p1

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/fd1;->a(Lcom/yandex/mobile/ads/impl/up1;Ljava/io/IOException;JLcom/yandex/mobile/ads/impl/ci0;[B)Lcom/yandex/mobile/ads/impl/fd1$a;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/yandex/mobile/ads/impl/fd1;->a(Lcom/yandex/mobile/ads/impl/up1;Lcom/yandex/mobile/ads/impl/fd1$a;)V

    goto :goto_0
.end method
