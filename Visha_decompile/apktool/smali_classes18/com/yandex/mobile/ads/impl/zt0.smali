.class public final Lcom/yandex/mobile/ads/impl/zt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/aj1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jm0;

.field private final b:Lcom/yandex/mobile/ads/impl/gt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jm0;Lcom/yandex/mobile/ads/impl/gt;)V
    .locals 1

    const-string v0, "instreamAdPlayerController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdBreak"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/zt0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zt0;->b:Lcom/yandex/mobile/ads/impl/gt;

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/zt0;->b:Lcom/yandex/mobile/ads/impl/gt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gt;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/go0;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zt0;->a:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/jm0;->c(Lcom/yandex/mobile/ads/impl/go0;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
