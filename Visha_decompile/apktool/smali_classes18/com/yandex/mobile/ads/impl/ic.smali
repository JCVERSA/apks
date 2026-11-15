.class public final Lcom/yandex/mobile/ads/impl/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v70;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mb2;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/mb2;->l()Lcom/yandex/mobile/ads/impl/ub2;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/v70;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/v70;-><init>(Lcom/yandex/mobile/ads/impl/ub2;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ic;->a:Lcom/yandex/mobile/ads/impl/v70;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ic;->a:Lcom/yandex/mobile/ads/impl/v70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v70;->a()Z

    move-result p0

    return p0
.end method
