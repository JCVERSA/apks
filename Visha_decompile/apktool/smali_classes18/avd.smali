.class public final synthetic Lavd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/uc;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/sc;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/sc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavd;->b:Lcom/yandex/mobile/ads/impl/uc;

    iput-object p2, p0, Lavd;->c:Lcom/yandex/mobile/ads/impl/sc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lavd;->b:Lcom/yandex/mobile/ads/impl/uc;

    iget-object p0, p0, Lavd;->c:Lcom/yandex/mobile/ads/impl/sc;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/uc;->b(Lcom/yandex/mobile/ads/impl/uc;Lcom/yandex/mobile/ads/impl/sc;)V

    return-void
.end method
