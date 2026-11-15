.class public final Lcom/yandex/mobile/ads/impl/bx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ec1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/g41;)Lcom/yandex/mobile/ads/impl/dc1;
    .locals 1

    const-string p0, "nativeAd"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/l71;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/l71;-><init>(Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/g71;)V

    return-object p0
.end method
