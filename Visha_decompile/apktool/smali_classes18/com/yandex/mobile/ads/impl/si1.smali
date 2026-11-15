.class public final Lcom/yandex/mobile/ads/impl/si1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ui1;

.field private final b:Lcom/yandex/mobile/ads/impl/oe2;

.field private final c:Lcom/yandex/mobile/ads/impl/a70;

.field private final d:Lcom/yandex/mobile/ads/impl/yi1;

.field private final e:Lcom/yandex/mobile/ads/impl/ii1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/oe2;Lcom/yandex/mobile/ads/impl/a70;Lcom/yandex/mobile/ads/impl/yi1;Lcom/yandex/mobile/ads/impl/ii1;)V
    .locals 1

    const-string v0, "stateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "durationHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "volumeController"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerPlaybackController"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/si1;->a:Lcom/yandex/mobile/ads/impl/ui1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/si1;->b:Lcom/yandex/mobile/ads/impl/oe2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/si1;->c:Lcom/yandex/mobile/ads/impl/a70;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/si1;->d:Lcom/yandex/mobile/ads/impl/yi1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/si1;->e:Lcom/yandex/mobile/ads/impl/ii1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/oe2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/si1;->b:Lcom/yandex/mobile/ads/impl/oe2;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/ii1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/si1;->e:Lcom/yandex/mobile/ads/impl/ii1;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/a70;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/si1;->c:Lcom/yandex/mobile/ads/impl/a70;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/ui1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/si1;->a:Lcom/yandex/mobile/ads/impl/ui1;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/yi1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/si1;->d:Lcom/yandex/mobile/ads/impl/yi1;

    return-object p0
.end method
