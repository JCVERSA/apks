.class public final Lcom/yandex/mobile/ads/impl/ta1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sa1;

.field private final b:Lcom/yandex/mobile/ads/impl/wa1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wa1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/wa1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/ta1;-><init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/wa1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sa1;Lcom/yandex/mobile/ads/impl/wa1;)V
    .locals 1

    .line 3
    const-string v0, "nativeVideoAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerVolumeManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ta1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ta1;->b:Lcom/yandex/mobile/ads/impl/wa1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xe2;)V
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xe2;->a()Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ta1;->b:Lcom/yandex/mobile/ads/impl/wa1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/wa1;->a(Ljava/lang/Double;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xe2;->c()Lcom/yandex/mobile/ads/impl/yf2;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ta1;->a:Lcom/yandex/mobile/ads/impl/sa1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sa1;->a(Lcom/yandex/mobile/ads/impl/yf2;)V

    return-void
.end method
