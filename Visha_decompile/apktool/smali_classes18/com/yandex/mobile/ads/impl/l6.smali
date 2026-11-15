.class public final Lcom/yandex/mobile/ads/impl/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/l20;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kz1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kz1;)V
    .locals 1

    const-string v0, "skipAdController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l6;->a:Lcom/yandex/mobile/ads/impl/kz1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "showNextAd"

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l6;->a:Lcom/yandex/mobile/ads/impl/kz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/kz1;->a()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
