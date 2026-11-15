.class final Lcom/yandex/mobile/ads/impl/h3$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field static final synthetic d:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/go1;

.field private final b:Lcom/yandex/mobile/ads/impl/yj2;

.field private final c:Lcom/yandex/mobile/ads/impl/y82;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getContext()Landroid/content/Context;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/h3$b;

    const-string v3, "context"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/h3$b;->d:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h3$b;->a:Lcom/yandex/mobile/ads/impl/go1;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/dt1;->b()Lcom/yandex/mobile/ads/impl/yj2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h3$b;->b:Lcom/yandex/mobile/ads/impl/yj2;

    new-instance p1, Lcom/yandex/mobile/ads/impl/y82;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/y82;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h3$b;->c:Lcom/yandex/mobile/ads/impl/y82;

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/h3$b;->a:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/h3$b;->d:[Laf5;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, p0, v0}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    instance-of p2, p0, Lcom/yandex/mobile/ads/impl/h3$c;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/yandex/mobile/ads/impl/h3$c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/h3$c;->b(Landroid/webkit/WebView;)V

    :cond_1
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/h3$b;->a:Lcom/yandex/mobile/ads/impl/go1;

    sget-object p3, Lcom/yandex/mobile/ads/impl/h3$b;->d:[Laf5;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    instance-of p2, p0, Lcom/yandex/mobile/ads/impl/h3$c;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/yandex/mobile/ads/impl/h3$c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/h3$c;->a(Landroid/webkit/WebView;)V

    :cond_1
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WebViewClientOnReceivedSslError"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h3$b;->b:Lcom/yandex/mobile/ads/impl/yj2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/yj2;->a(Landroid/content/Context;Landroid/net/http/SslError;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :cond_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/w82;->a:Lcom/yandex/mobile/ads/impl/w82$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/w82$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h3$b;->c:Lcom/yandex/mobile/ads/impl/y82;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/y82;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
