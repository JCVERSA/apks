.class public final Lcom/yandex/mobile/ads/impl/l00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bp1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/f00;

.field private c:Lcom/yandex/mobile/ads/impl/ov0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l00;->a:Landroid/content/Context;

    new-instance p1, Lcom/yandex/mobile/ads/impl/f00;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/f00;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l00;->b:Lcom/yandex/mobile/ads/impl/f00;

    sget-object p1, Lcom/yandex/mobile/ads/impl/ov0;->a:Lcom/yandex/mobile/ads/impl/ov0;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l00;->c:Lcom/yandex/mobile/ads/impl/ov0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/vf2;Lcom/yandex/mobile/ads/impl/vh;Lcom/yandex/mobile/ads/impl/u42;Lcom/yandex/mobile/ads/impl/o01;)[Lcom/yandex/mobile/ads/impl/yo1;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l00;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/l00;->c:Lcom/yandex/mobile/ads/impl/ov0;

    new-instance v7, Lcom/yandex/mobile/ads/impl/vv0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/l00;->b:Lcom/yandex/mobile/ads/impl/f00;

    move-object v1, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/vv0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/f00;Lcom/yandex/mobile/ads/impl/ov0;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/vf2;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/l00;->a:Landroid/content/Context;

    new-instance v1, Lcom/yandex/mobile/ads/impl/hz$e;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/hz$e;-><init>()V

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/rh;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/rh;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/yandex/mobile/ads/impl/hz$e;->a(Lcom/yandex/mobile/ads/impl/rh;)Lcom/yandex/mobile/ads/impl/hz$e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hz$e;->c()Lcom/yandex/mobile/ads/impl/hz$e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hz$e;->b()Lcom/yandex/mobile/ads/impl/hz$e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hz$e;->d()Lcom/yandex/mobile/ads/impl/hz$e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/hz$e;->a()Lcom/yandex/mobile/ads/impl/hz;

    move-result-object v7

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/l00;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/l00;->c:Lcom/yandex/mobile/ads/impl/ov0;

    new-instance p2, Lcom/yandex/mobile/ads/impl/hv0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/l00;->b:Lcom/yandex/mobile/ads/impl/f00;

    move-object v1, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/hv0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/f00;Lcom/yandex/mobile/ads/impl/ov0;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/vh;Lcom/yandex/mobile/ads/impl/hz;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p2, Lcom/yandex/mobile/ads/impl/v42;

    invoke-direct {p2, p4, p0}, Lcom/yandex/mobile/ads/impl/v42;-><init>(Lcom/yandex/mobile/ads/impl/u42;Landroid/os/Looper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/p01;

    invoke-direct {p1, p5, p0}, Lcom/yandex/mobile/ads/impl/p01;-><init>(Lcom/yandex/mobile/ads/impl/o01;Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/yandex/mobile/ads/impl/xn;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/xn;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/yandex/mobile/ads/impl/yo1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/yandex/mobile/ads/impl/yo1;

    return-object p0
.end method
