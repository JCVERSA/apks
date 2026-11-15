.class public final Lcom/yandex/mobile/ads/impl/to2;
.super Lcom/yandex/mobile/ads/impl/lo2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lo2$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/lo2;-><init>(Lcom/yandex/mobile/ads/impl/lo2$b;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lo2;->b:Lcom/yandex/mobile/ads/impl/lo2$b;

    check-cast p0, Lcom/yandex/mobile/ads/impl/ko2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ko2;->a(Lorg/json/JSONObject;)V

    return-object p1
.end method
