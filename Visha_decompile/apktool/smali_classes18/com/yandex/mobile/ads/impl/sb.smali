.class public final Lcom/yandex/mobile/ads/impl/sb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/sb$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Dialog;

.field private final b:Lcom/yandex/mobile/ads/impl/vb;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/yandex/mobile/ads/impl/vb;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adtuneOptOutWebView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sb;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sb;->b:Lcom/yandex/mobile/ads/impl/vb;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/sb;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sb;->a:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/sb$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/sb$a;-><init>(Lcom/yandex/mobile/ads/impl/sb;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sb;->b:Lcom/yandex/mobile/ads/impl/vb;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/vb;->setAdtuneWebViewListener(Lcom/yandex/mobile/ads/impl/xb;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sb;->b:Lcom/yandex/mobile/ads/impl/vb;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sb;->a:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
