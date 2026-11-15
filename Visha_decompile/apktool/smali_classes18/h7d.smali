.class public final synthetic Lh7d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/bg0;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ct;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/cg0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/cg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7d;->b:Lcom/yandex/mobile/ads/impl/bg0;

    iput-object p2, p0, Lh7d;->c:Lcom/yandex/mobile/ads/impl/ct;

    iput-object p3, p0, Lh7d;->d:Lcom/yandex/mobile/ads/impl/cg0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh7d;->b:Lcom/yandex/mobile/ads/impl/bg0;

    iget-object v1, p0, Lh7d;->c:Lcom/yandex/mobile/ads/impl/ct;

    iget-object p0, p0, Lh7d;->d:Lcom/yandex/mobile/ads/impl/cg0;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/bg0;->b(Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/ct;Lcom/yandex/mobile/ads/impl/cg0;)V

    return-void
.end method
