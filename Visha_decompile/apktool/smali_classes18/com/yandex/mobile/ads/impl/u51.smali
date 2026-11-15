.class public final Lcom/yandex/mobile/ads/impl/u51;
.super Lcom/yandex/mobile/ads/impl/ak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ak<",
        "Lcom/yandex/mobile/ads/impl/y61;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/o61;Lcom/yandex/mobile/ads/impl/x61;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/hq1<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/eq1;",
            "Lcom/yandex/mobile/ads/impl/qk$a<",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;>;",
            "Lcom/yandex/mobile/ads/impl/o61;",
            "Lcom/yandex/mobile/ads/impl/x61;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    move-object v1, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object v3, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseParserCreator"

    move-object/from16 v6, p8

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdRequestReporter"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/16 v11, 0x700

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/ak;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/sx1;I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/yandex/mobile/ads/impl/xc1;I)Z
    .locals 3

    const-string p0, "networkResponse"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    xor-int/2addr p0, v2

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0xcc

    if-ne p0, p2, :cond_2

    :goto_1
    move v1, v2

    :cond_2
    return v1
.end method
