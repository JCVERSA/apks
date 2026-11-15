.class final Lcom/yandex/mobile/ads/impl/dx$k;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$k;->b:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/xx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dx$k;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/dx;->n(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/ns0;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/dx$k;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/dx;->w(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/oo1;

    move-result-object v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$k;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dx;->e(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/cx;

    move-result-object p0

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/yandex/mobile/ads/impl/xx;-><init>(Lcom/yandex/mobile/ads/impl/ns0;Lcom/yandex/mobile/ads/impl/oo1;Lcom/yandex/mobile/ads/impl/cx;Lkotlinx/coroutines/c;)V

    return-object v0
.end method
