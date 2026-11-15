.class public final Lcom/yandex/mobile/ads/impl/a8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p2;)V
    .locals 1

    const-string v0, "adBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a8;->a:Lcom/yandex/mobile/ads/impl/p2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/t9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a8;->a:Lcom/yandex/mobile/ads/impl/p2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p2;->b()Lcom/yandex/mobile/ads/impl/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k9;->a()Lcom/yandex/mobile/ads/impl/t9;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a8;->a:Lcom/yandex/mobile/ads/impl/p2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p2;->e()Lcom/yandex/mobile/ads/impl/r2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r2;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a8;->a:Lcom/yandex/mobile/ads/impl/p2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p2;->b()Lcom/yandex/mobile/ads/impl/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k9;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a8;->a:Lcom/yandex/mobile/ads/impl/p2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p2;->e()Lcom/yandex/mobile/ads/impl/r2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r2;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a8;->a:Lcom/yandex/mobile/ads/impl/p2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p2;->e()Lcom/yandex/mobile/ads/impl/r2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r2;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
