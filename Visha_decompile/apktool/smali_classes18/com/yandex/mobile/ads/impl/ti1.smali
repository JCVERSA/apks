.class public final Lcom/yandex/mobile/ads/impl/ti1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vi1;

.field private final b:Lcom/yandex/mobile/ads/impl/pe2;

.field private final c:Lcom/yandex/mobile/ads/impl/b70;

.field private final d:Lcom/yandex/mobile/ads/impl/zi1;

.field private final e:Lcom/yandex/mobile/ads/impl/ji1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/b70;Lcom/yandex/mobile/ads/impl/zi1;Lcom/yandex/mobile/ads/impl/ji1;)V
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ti1;->a:Lcom/yandex/mobile/ads/impl/vi1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ti1;->b:Lcom/yandex/mobile/ads/impl/pe2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ti1;->c:Lcom/yandex/mobile/ads/impl/b70;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ti1;->d:Lcom/yandex/mobile/ads/impl/zi1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ti1;->e:Lcom/yandex/mobile/ads/impl/ji1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pe2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ti1;->b:Lcom/yandex/mobile/ads/impl/pe2;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/ji1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ti1;->e:Lcom/yandex/mobile/ads/impl/ji1;

    return-object p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/b70;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ti1;->c:Lcom/yandex/mobile/ads/impl/b70;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/vi1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ti1;->a:Lcom/yandex/mobile/ads/impl/vi1;

    return-object p0
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/zi1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ti1;->d:Lcom/yandex/mobile/ads/impl/zi1;

    return-object p0
.end method
