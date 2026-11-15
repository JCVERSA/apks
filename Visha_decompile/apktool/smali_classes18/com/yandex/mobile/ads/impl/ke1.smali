.class public final Lcom/yandex/mobile/ads/impl/ke1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/t82;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/t82;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ke1;->a:Lcom/yandex/mobile/ads/impl/t82;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/up1;Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/vp1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/up1<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/impl/vp1;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalHeaders"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ke1;->a:Lcom/yandex/mobile/ads/impl/t82;

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/gd1;->a(Lcom/yandex/mobile/ads/impl/up1;Lcom/yandex/mobile/ads/impl/t82;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->e()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getHeaders(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/collections/a;->s(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string v1, "Content-Type"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/qf0$b;->a(Ljava/util/Map;)Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object p2

    sget-object v1, Lcom/yandex/mobile/ads/impl/r01;->c:Lcom/yandex/mobile/ads/impl/r01$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->d:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->k:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->j:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->i:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->h:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->g:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->f:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->e:Lcom/yandex/mobile/ads/impl/r01;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/yandex/mobile/ads/impl/r01;->d:Lcom/yandex/mobile/ads/impl/r01;

    :goto_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/up1;->b()[B

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/yp1$a;->a([B)Lcom/yandex/mobile/ads/impl/xp1;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/vp1$a;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/vp1$a;-><init>()V

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/net/URL;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r01;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/vp1$a;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/yp1;)Lcom/yandex/mobile/ads/impl/vp1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vp1$a;->a()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
