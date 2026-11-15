.class public final synthetic Lxcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$b;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ez;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/hi1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ez;Lcom/yandex/mobile/ads/impl/hi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxcd;->a:Lcom/yandex/mobile/ads/impl/ez;

    iput-object p2, p0, Lxcd;->b:Lcom/yandex/mobile/ads/impl/hi1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/bc0;)V
    .locals 1

    iget-object v0, p0, Lxcd;->a:Lcom/yandex/mobile/ads/impl/ez;

    iget-object p0, p0, Lxcd;->b:Lcom/yandex/mobile/ads/impl/hi1;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ez;->G(Lcom/yandex/mobile/ads/impl/ez;Lcom/yandex/mobile/ads/impl/hi1;Lcom/yandex/mobile/ads/impl/ld;Lcom/yandex/mobile/ads/impl/bc0;)V

    return-void
.end method
