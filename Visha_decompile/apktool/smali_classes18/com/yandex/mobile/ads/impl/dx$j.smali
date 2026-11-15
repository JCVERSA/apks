.class final Lcom/yandex/mobile/ads/impl/dx$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/dx;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/dx;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$j;->b:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lcom/yandex/mobile/ads/impl/ux;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$j;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->n(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/ns0;

    move-result-object v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$j;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->w(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/oo1;

    move-result-object v2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$j;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->r(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/zz0;

    move-result-object v3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/dx$j;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/dx;->k(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/kl0;

    move-result-object v4

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$j;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dx;->l(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/ml0;

    move-result-object v5

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ux;-><init>(Lcom/yandex/mobile/ads/impl/ns0;Lcom/yandex/mobile/ads/impl/oo1;Lcom/yandex/mobile/ads/impl/zz0;Lcom/yandex/mobile/ads/impl/kl0;Lcom/yandex/mobile/ads/impl/ml0;Lkotlinx/coroutines/c;)V

    return-object v7
.end method
