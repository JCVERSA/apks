.class public final Lcom/yandex/mobile/ads/impl/o20;
.super Lcf2;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zr;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m10;)V
    .locals 1

    const-string v0, "contentCloseListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf2;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o20;->a:Lcom/yandex/mobile/ads/impl/zr;

    return-void
.end method


# virtual methods
.method public final handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobileads"

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeDialog"

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o20;->a:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
