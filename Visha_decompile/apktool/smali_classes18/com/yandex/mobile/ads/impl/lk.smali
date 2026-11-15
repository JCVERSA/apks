.class public Lcom/yandex/mobile/ads/impl/lk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xg0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yf1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/yf1;)V
    .locals 1

    const-string v0, "parentHtmlWebView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lk;->a:Lcom/yandex/mobile/ads/impl/yf1;

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/impl/dh0;)V
    .locals 1

    .line 3
    const-string v0, "htmlWebViewListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lk;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->setHtmlWebViewListener(Lcom/yandex/mobile/ads/impl/dh0;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "htmlResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lk;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vk;->b(Ljava/lang/String;)V

    return-void
.end method

.method public invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lk;->a:Lcom/yandex/mobile/ads/impl/yf1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yf1;->d()V

    return-void
.end method
