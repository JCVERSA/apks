.class public final Lcom/yandex/mobile/ads/impl/j30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/sp1;

.field private final c:Lcom/yandex/mobile/ads/impl/uq0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/o3;->q()Lcom/yandex/mobile/ads/impl/bv1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/uq0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/uq0;-><init>()V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/j30;-><init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/uq0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/uq0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/uq0;",
            ")V"
        }
    .end annotation

    .line 4
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResponse"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reporter"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "jsonConvertor"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/j30;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/j30;->b:Lcom/yandex/mobile/ads/impl/sp1;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/j30;->c:Lcom/yandex/mobile/ads/impl/uq0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventName"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j30;->c:Lcom/yandex/mobile/ads/impl/uq0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/uq0;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    new-instance v0, Lcom/yandex/mobile/ads/impl/op1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j30;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j30;->b:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    :cond_3
    return-void
.end method
