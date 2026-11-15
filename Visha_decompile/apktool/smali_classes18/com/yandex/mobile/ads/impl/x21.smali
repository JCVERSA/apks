.class public Lcom/yandex/mobile/ads/impl/x21;
.super Lcom/yandex/mobile/ads/impl/lk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/x21$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/m21;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yf1;Lcom/yandex/mobile/ads/impl/dh0;Lcom/yandex/mobile/ads/impl/x21$a;Lcom/yandex/mobile/ads/impl/m21;)V
    .locals 1

    const-string v0, "parentHtmlWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlWebViewListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "htmlWebViewMraidListener"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mraidController"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/lk;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/x21;->b:Lcom/yandex/mobile/ads/impl/m21;

    invoke-virtual {p4, p3}, Lcom/yandex/mobile/ads/impl/m21;->a(Lcom/yandex/mobile/ads/impl/u21;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dh0;)V
    .locals 2

    .line 3
    const-string v0, "htmlWebViewListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/r21;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x21;->b:Lcom/yandex/mobile/ads/impl/m21;

    invoke-direct {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/r21;-><init>(Lcom/yandex/mobile/ads/impl/m21;Lcom/yandex/mobile/ads/impl/dh0;)V

    .line 5
    invoke-super {p0, v0}, Lcom/yandex/mobile/ads/impl/lk;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "htmlResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x21;->b:Lcom/yandex/mobile/ads/impl/m21;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/m21;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/m21;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x21;->b:Lcom/yandex/mobile/ads/impl/m21;

    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/lk;->invalidate()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x21;->b:Lcom/yandex/mobile/ads/impl/m21;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m21;->a()V

    return-void
.end method
