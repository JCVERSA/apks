.class public final Lcom/yandex/mobile/ads/impl/pd0;
.super Lcom/yandex/mobile/ads/impl/wg0;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final o:Lcom/yandex/mobile/ads/impl/vj2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/wg0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/vj2;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/vj2;-><init>(Lcom/yandex/mobile/ads/impl/yf1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pd0;->o:Lcom/yandex/mobile/ads/impl/vj2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;->a(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string v0, "getSettings(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.monetization.ads.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 9
    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const/4 p0, -0x1

    .line 10
    invoke-virtual {p1, p0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg0;->b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/wg0$a;

    move-result-object p1

    .line 3
    const-string p2, "AdPerformActionsJSI"

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/vk;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pd0;->o:Lcom/yandex/mobile/ads/impl/vj2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wg0;->l()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/vj2;->a(Ljava/util/Map;)V

    return-void
.end method
