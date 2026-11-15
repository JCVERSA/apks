.class public final Lcom/yandex/mobile/ads/impl/ow0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o92;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o92;)V
    .locals 1

    const-string v0, "valueReader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ow0;->a:Lcom/yandex/mobile/ads/impl/o92;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    const-string v0, "jsonValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ow0;->a:Lcom/yandex/mobile/ads/impl/o92;

    const-string v0, "html"

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/o92;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aspectRatio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x3fe38e39

    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/wu0;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/wu0;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method
