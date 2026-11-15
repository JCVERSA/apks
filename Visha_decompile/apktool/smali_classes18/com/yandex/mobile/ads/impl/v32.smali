.class public final Lcom/yandex/mobile/ads/impl/v32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/vx;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/vx;)V
    .locals 1

    const-string v0, "repo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v32;->a:Lcom/yandex/mobile/ads/impl/vx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v32;->a:Lcom/yandex/mobile/ads/impl/vx;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/vx;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v32;->a:Lcom/yandex/mobile/ads/impl/vx;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/vx;->a(Z)V

    return-void
.end method
