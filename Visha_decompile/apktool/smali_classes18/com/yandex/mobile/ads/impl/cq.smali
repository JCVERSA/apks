.class public final Lcom/yandex/mobile/ads/impl/cq;
.super Lcf2;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/eq;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bq;)V
    .locals 1

    const-string v0, "closeVerificationListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcf2;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cq;->a:Lcom/yandex/mobile/ads/impl/eq;

    return-void
.end method


# virtual methods
.method public final handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z
    .locals 4

    const-string v0, "action"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yandex/div2/DivAction;->k:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "close_ad"

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cq;->a:Lcom/yandex/mobile/ads/impl/eq;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/eq;->a()V

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_0
    const-string v2, "close_dialog"

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cq;->a:Lcom/yandex/mobile/ads/impl/eq;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/eq;->b()V

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcf2;->handleAction(Lcom/yandex/div2/DivAction;Lsv2;Loj3;)Z

    move-result v1

    :goto_2
    return v1
.end method
