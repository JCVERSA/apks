.class public final Lcom/yandex/mobile/ads/impl/sr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/y1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ks1;

.field private final b:Lcom/yandex/mobile/ads/impl/tr1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/j1;Lcom/yandex/mobile/ads/impl/ks1;Lcom/yandex/mobile/ads/impl/tr1;)V
    .locals 1

    const-string v0, "adActivityListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "closeVerificationController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rewardController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sr1;->a:Lcom/yandex/mobile/ads/impl/ks1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sr1;->b:Lcom/yandex/mobile/ads/impl/tr1;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sr1;->a:Lcom/yandex/mobile/ads/impl/ks1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ks1;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sr1;->b:Lcom/yandex/mobile/ads/impl/tr1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tr1;->a()V

    return-void
.end method
