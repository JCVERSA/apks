.class public final Lcom/yandex/mobile/ads/impl/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/pw1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pw1;)V
    .locals 1

    const-string v0, "sdkSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bw;->a:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/hx;
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/hx;

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bw;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pw1;->i()Z

    move-result p0

    .line 4
    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/hx;-><init>(Z)V

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bw;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->b(Z)V

    return-void
.end method
