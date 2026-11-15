.class public final synthetic Ldjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/v7;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ca1;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/fa1;

.field public final synthetic e:Lcom/yandex/mobile/ads/impl/hq1;

.field public final synthetic f:Lcom/yandex/mobile/ads/impl/i61;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldjd;->b:Lcom/yandex/mobile/ads/impl/v7;

    iput-object p2, p0, Ldjd;->c:Lcom/yandex/mobile/ads/impl/ca1;

    iput-object p3, p0, Ldjd;->d:Lcom/yandex/mobile/ads/impl/fa1;

    iput-object p4, p0, Ldjd;->e:Lcom/yandex/mobile/ads/impl/hq1;

    iput-object p5, p0, Ldjd;->f:Lcom/yandex/mobile/ads/impl/i61;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ldjd;->b:Lcom/yandex/mobile/ads/impl/v7;

    iget-object v1, p0, Ldjd;->c:Lcom/yandex/mobile/ads/impl/ca1;

    iget-object v2, p0, Ldjd;->d:Lcom/yandex/mobile/ads/impl/fa1;

    iget-object v3, p0, Ldjd;->e:Lcom/yandex/mobile/ads/impl/hq1;

    iget-object p0, p0, Ldjd;->f:Lcom/yandex/mobile/ads/impl/i61;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/yandex/mobile/ads/impl/i61;->e(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ca1;Lcom/yandex/mobile/ads/impl/fa1;Lcom/yandex/mobile/ads/impl/hq1;Lcom/yandex/mobile/ads/impl/i61;)V

    return-void
.end method
