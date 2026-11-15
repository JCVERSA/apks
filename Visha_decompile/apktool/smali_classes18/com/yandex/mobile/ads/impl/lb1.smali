.class public final Lcom/yandex/mobile/ads/impl/lb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sc2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/sc2<",
        "Lcom/yandex/mobile/ads/impl/kb1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/ew0;Lcom/yandex/mobile/ads/impl/zc2;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    const-string p0, "videoAd"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "creative"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaFile"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adPodInfo"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ew0;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ew0;->h()I

    move-result p1

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ew0;->d()I

    move-result p2

    new-instance p3, Lcom/yandex/mobile/ads/impl/kb1;

    invoke-direct {p3, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/kb1;-><init>(Ljava/lang/String;II)V

    return-object p3
.end method
