.class public final Lcom/yandex/mobile/ads/common/BidderTokenLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/common/BidderTokenLoader;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;",
        "bidderTokenRequestConfiguration",
        "Lcom/yandex/mobile/ads/common/BidderTokenLoadListener;",
        "listener",
        "Lzfb;",
        "loadBidderToken",
        "(Landroid/content/Context;Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;Lcom/yandex/mobile/ads/common/BidderTokenLoadListener;)V",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/common/BidderTokenLoader;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/common/BidderTokenLoader;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadBidderToken(Landroid/content/Context;Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;Lcom/yandex/mobile/ads/common/BidderTokenLoadListener;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "bidderTokenRequestConfiguration"

    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "listener"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/yandex/mobile/ads/impl/en2;

    invoke-direct {v3, v1}, Lcom/yandex/mobile/ads/impl/en2;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/yandex/mobile/ads/impl/ul2;

    invoke-direct {v12, v2}, Lcom/yandex/mobile/ads/impl/ul2;-><init>(Lcom/yandex/mobile/ads/common/BidderTokenLoadListener;)V

    const-string v2, "request"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;->getAdType()Lcom/yandex/mobile/ads/common/AdType;

    move-result-object v2

    sget-object v4, Lcom/yandex/mobile/ads/impl/vl2;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v2, Lcom/yandex/mobile/ads/impl/ts;->i:Lcom/yandex/mobile/ads/impl/ts;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/yandex/mobile/ads/impl/ts;->g:Lcom/yandex/mobile/ads/impl/ts;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/yandex/mobile/ads/impl/ts;->f:Lcom/yandex/mobile/ads/impl/ts;

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/yandex/mobile/ads/impl/ts;->e:Lcom/yandex/mobile/ads/impl/ts;

    goto :goto_0

    :pswitch_4
    sget-object v2, Lcom/yandex/mobile/ads/impl/ts;->d:Lcom/yandex/mobile/ads/impl/ts;

    goto :goto_0

    :pswitch_5
    move-object v2, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;->getBannerAdSize()Lcom/yandex/mobile/ads/banner/BannerAdSize;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/yandex/mobile/ads/banner/a;->a(Lcom/yandex/mobile/ads/banner/BannerAdSize;)Lcom/yandex/mobile/ads/impl/zs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/fk;->a()Lcom/yandex/mobile/ads/impl/gz1;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_1
    new-instance v13, Lcom/yandex/mobile/ads/impl/dl;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/common/BidderTokenRequestConfiguration;->getParameters()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v0

    :cond_1
    invoke-direct {v13, v2, v5, v0}, Lcom/yandex/mobile/ads/impl/dl;-><init>(Lcom/yandex/mobile/ads/impl/ts;Lcom/yandex/mobile/ads/impl/gz1;Ljava/util/Map;)V

    new-instance v14, Lcom/yandex/mobile/ads/impl/gu1;

    const/4 v0, 0x1

    invoke-static {v4, v0, v4}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v0, "getApplicationContext(...)"

    invoke-static {v15, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    sget v0, Lcom/yandex/mobile/ads/impl/p50;->e:I

    invoke-static {v15}, Lcom/yandex/mobile/ads/impl/p50$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p50;

    move-result-object v16

    new-instance v17, Lcom/yandex/mobile/ads/impl/jc;

    invoke-direct/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/jc;-><init>()V

    new-instance v18, Lcom/yandex/mobile/ads/impl/wv1;

    move-object/from16 v4, v18

    move-object v5, v15

    move-object v6, v3

    move-object v7, v11

    move-object v8, v2

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-direct/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/wv1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lnk1;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;)V

    sget v0, Lcom/yandex/mobile/ads/impl/j32;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/j32$a;->a()Lcom/yandex/mobile/ads/impl/j32;

    move-result-object v9

    new-instance v10, Lcom/yandex/mobile/ads/impl/eu1;

    invoke-direct {v10, v2}, Lcom/yandex/mobile/ads/impl/eu1;-><init>(Lcom/yandex/mobile/ads/impl/g5;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/ef1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/en2;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    new-instance v4, Lcom/yandex/mobile/ads/impl/cl;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/cl;-><init>()V

    new-instance v5, Lcom/yandex/mobile/ads/impl/bf1;

    invoke-direct {v5, v2}, Lcom/yandex/mobile/ads/impl/bf1;-><init>(Lcom/yandex/mobile/ads/impl/g5;)V

    invoke-direct {v8, v2, v0, v4, v5}, Lcom/yandex/mobile/ads/impl/ef1;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/cl;Lcom/yandex/mobile/ads/impl/ch1;)V

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v2

    move-object v2, v3

    move-object v3, v11

    move-object v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object v11, v8

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v11}, Lcom/yandex/mobile/ads/impl/gu1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lnk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/wv1;Lcom/yandex/mobile/ads/impl/j32;Lcom/yandex/mobile/ads/impl/eu1;Lcom/yandex/mobile/ads/impl/ef1;)V

    invoke-virtual {v14, v13, v12}, Lcom/yandex/mobile/ads/impl/gu1;->a(Lcom/yandex/mobile/ads/impl/dl;Lcom/yandex/mobile/ads/impl/ul2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
