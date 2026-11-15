.class public final Lcom/yandex/mobile/ads/impl/k30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/u82;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lh1;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k30;->a:Lcom/yandex/mobile/ads/impl/u82;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingUrl"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k30;->a:Lcom/yandex/mobile/ads/impl/u82;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/u82;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
