.class public final synthetic Lhpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ok;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/v7;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ok;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhpd;->b:Lcom/yandex/mobile/ads/impl/ok;

    iput-object p2, p0, Lhpd;->c:Lcom/yandex/mobile/ads/impl/v7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lhpd;->b:Lcom/yandex/mobile/ads/impl/ok;

    iget-object p0, p0, Lhpd;->c:Lcom/yandex/mobile/ads/impl/v7;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/ok;->b(Lcom/yandex/mobile/ads/impl/ok;Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method
