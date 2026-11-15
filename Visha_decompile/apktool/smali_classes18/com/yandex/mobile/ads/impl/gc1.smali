.class public final Lcom/yandex/mobile/ads/impl/gc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/yc0;
.implements Lcom/yandex/mobile/ads/impl/jc1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ic1;

.field private final b:Lcom/yandex/mobile/ads/impl/zp;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ic1;Lcom/yandex/mobile/ads/impl/zp;)V
    .locals 1

    const-string v0, "nativeWebViewController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeShowListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gc1;->a:Lcom/yandex/mobile/ads/impl/ic1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gc1;->b:Lcom/yandex/mobile/ads/impl/zp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gc1;->b:Lcom/yandex/mobile/ads/impl/zp;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/zp;->a()V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/gc1;->a:Lcom/yandex/mobile/ads/impl/ic1;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ic1;->b(Lcom/yandex/mobile/ads/impl/jc1;)V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gc1;->a:Lcom/yandex/mobile/ads/impl/ic1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ic1;->b(Lcom/yandex/mobile/ads/impl/jc1;)V

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gc1;->a:Lcom/yandex/mobile/ads/impl/ic1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ic1;->a(Lcom/yandex/mobile/ads/impl/jc1;)V

    return-void
.end method
