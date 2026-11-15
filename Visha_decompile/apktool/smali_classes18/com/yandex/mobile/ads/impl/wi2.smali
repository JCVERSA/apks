.class public final Lcom/yandex/mobile/ads/impl/wi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/vi2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ui2;

.field private final b:Lcom/yandex/mobile/ads/impl/zc1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ui2;Lcom/yandex/mobile/ads/impl/zc1;)V
    .locals 1

    const-string v0, "volleyMapper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkResponseDecoder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wi2;->a:Lcom/yandex/mobile/ads/impl/ui2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wi2;->b:Lcom/yandex/mobile/ads/impl/zc1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/String;
    .locals 1

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wi2;->a:Lcom/yandex/mobile/ads/impl/ui2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ui2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/wq1;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wi2;->b:Lcom/yandex/mobile/ads/impl/zc1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/zc1;->a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
