.class public abstract Lcom/yandex/mobile/ads/impl/wg0;
.super Lcom/yandex/mobile/ads/impl/yf1;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/eh0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/wg0$a;
    }
.end annotation


# instance fields
.field private final k:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:Lcom/yandex/mobile/ads/impl/gg1;

.field private m:Lcom/yandex/mobile/ads/impl/dh0;

.field private final n:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/hg1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/hg1;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/wg0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/hg1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/hg1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/hg1;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerCodeAdRendererFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/yf1;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wg0;->k:Lcom/yandex/mobile/ads/impl/o8;

    .line 6
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hg1;->a(Lcom/yandex/mobile/ads/impl/eh0;)Lcom/yandex/mobile/ads/impl/gg1;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wg0;->l:Lcom/yandex/mobile/ads/impl/gg1;

    .line 7
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wg0;->n:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/yandex/mobile/ads/impl/wg0;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wg0;->k:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "partner-code"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->l:Lcom/yandex/mobile/ads/impl/gg1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gg1;->b()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/yf1;->a()V

    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/wg0;->b(ILjava/lang/String;)V

    .line 3
    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/yf1;->a()V

    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation
.end method

.method public final b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/wg0$a;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/wg0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->l:Lcom/yandex/mobile/ads/impl/gg1;

    invoke-direct {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/wg0$a;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/gg1;)V

    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "undefined"

    invoke-static {p2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->n:Ljava/util/LinkedHashMap;

    const-string p1, "test-tag"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/yf1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/rj2;->b()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->k:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->k()Ljava/lang/String;

    move-result-object p0

    const-string v2, "partner-code"

    invoke-static {v2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wg0;->l:Lcom/yandex/mobile/ads/impl/gg1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gg1;->a()V

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/yf1;->d()V

    return-void
.end method

.method public final j()Lcom/yandex/mobile/ads/impl/dh0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->m:Lcom/yandex/mobile/ads/impl/dh0;

    return-object p0
.end method

.method public final k()Lcom/yandex/mobile/ads/impl/o8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->k:Lcom/yandex/mobile/ads/impl/o8;

    return-object p0
.end method

.method public final l()Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->n:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final m()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wg0;->k:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o8;->k()Ljava/lang/String;

    move-result-object p0

    const-string v0, "partner-code"

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    const-string v1, "jsName"

    const-string v2, "AdPerformActionsJSI"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/vk;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/yandex/mobile/ads/impl/wg0$a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/mobile/ads/impl/wg0$a;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setHtmlWebViewListener(Lcom/yandex/mobile/ads/impl/dh0;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/wg0;->l:Lcom/yandex/mobile/ads/impl/gg1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/gg1;->a(Lcom/yandex/mobile/ads/impl/dh0;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wg0;->m:Lcom/yandex/mobile/ads/impl/dh0;

    return-void
.end method
