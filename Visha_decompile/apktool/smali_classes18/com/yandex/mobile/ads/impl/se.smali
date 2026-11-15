.class public final Lcom/yandex/mobile/ads/impl/se;
.super Lcom/yandex/mobile/ads/impl/sy1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/sy1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/n01;Ljava/nio/ByteBuffer;)Lcom/yandex/mobile/ads/impl/k01;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 p1, 0x74

    const/4 v0, 0x0

    if-ne p0, p1, :cond_7

    new-instance p0, Lcom/yandex/mobile/ads/impl/zf1;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/zf1;-><init>(I[B)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zf1;->d()I

    move-result v1

    add-int/2addr v1, p2

    const/4 p2, 0x4

    sub-int/2addr v1, p2

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/zf1;->e(I)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zf1;->d()I

    move-result v4

    if-ge v4, v1, :cond_5

    const/16 v4, 0x30

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v5

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zf1;->d()I

    move-result v7

    add-int/2addr v7, v6

    move-object v6, v0

    move-object v8, v6

    :goto_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zf1;->d()I

    move-result v9

    if-ge v9, v7, :cond_4

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v9

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zf1;->d()I

    move-result v11

    add-int/2addr v11, v10

    const/4 v12, 0x2

    if-ne v9, v12, :cond_2

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v9

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->d(I)V

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zf1;->d()I

    move-result v9

    if-ge v9, v11, :cond_3

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v6

    sget-object v9, Lcom/yandex/mobile/ads/impl/lo;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6, v9}, Lcom/yandex/mobile/ads/impl/zf1;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_1

    invoke-virtual {p0, v4}, Lcom/yandex/mobile/ads/impl/zf1;->b(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/yandex/mobile/ads/impl/zf1;->e(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/16 v12, 0x15

    if-ne v9, v12, :cond_3

    sget-object v8, Lcom/yandex/mobile/ads/impl/lo;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v10, v8}, Lcom/yandex/mobile/ads/impl/zf1;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {p0, v11}, Lcom/yandex/mobile/ads/impl/zf1;->c(I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {p0, v7}, Lcom/yandex/mobile/ads/impl/zf1;->c(I)V

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    new-instance v4, Lcom/yandex/mobile/ads/impl/re;

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yandex/mobile/ads/impl/re;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/yandex/mobile/ads/impl/k01;

    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/impl/k01;-><init>(Ljava/util/List;)V

    :cond_7
    :goto_3
    return-object v0
.end method
