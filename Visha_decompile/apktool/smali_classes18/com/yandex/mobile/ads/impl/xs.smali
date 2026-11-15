.class public final Lcom/yandex/mobile/ads/impl/xs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/yf;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;)Lcom/yandex/mobile/ads/impl/xf;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xs;->a:Lcom/yandex/mobile/ads/impl/xf;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/p0;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xs;->a:Lcom/yandex/mobile/ads/impl/xf;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/xf;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/rl2;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xs;->a:Lcom/yandex/mobile/ads/impl/xf;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/xf;->a(Lcom/yandex/mobile/ads/impl/rl2;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 1

    .line 2
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xs;->a:Lcom/yandex/mobile/ads/impl/xf;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/xf;->a(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method
