.class public final Lcom/yandex/mobile/ads/impl/bc2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/sc2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/sc2<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "videoAdPlaybackInfoCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bc2;->a:Lcom/yandex/mobile/ads/impl/sc2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ra2;II)Lcom/yandex/mobile/ads/impl/zb2;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ra2;",
            "II)",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "vastVideoAdData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ra2;->e()Lcom/yandex/mobile/ads/impl/mb2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ra2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v9

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ra2;->c()Lcom/yandex/mobile/ads/impl/ew0;

    move-result-object v10

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ra2;->d()Lcom/yandex/mobile/ads/impl/i12;

    move-result-object v11

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ra2;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ra2;->g()Lorg/json/JSONObject;

    move-result-object v8

    new-instance v5, Lcom/yandex/mobile/ads/impl/zc2;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v5, p2, p3}, Lcom/yandex/mobile/ads/impl/zc2;-><init>(II)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ra2;->a()Lcom/yandex/mobile/ads/impl/w9;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/x9;->a(Lcom/yandex/mobile/ads/impl/w9;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v7, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/bc2;->a:Lcom/yandex/mobile/ads/impl/sc2;

    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    invoke-interface/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/sc2;->a(Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/ew0;Lcom/yandex/mobile/ads/impl/zc2;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wi0;->a()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    new-instance p0, Lcom/yandex/mobile/ads/impl/zb2;

    move-object v1, p0

    move-object v2, v9

    move-object v3, v0

    move-object v6, v11

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/zb2;-><init>(Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/ew0;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i12;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/w9;)V

    return-object p0
.end method
