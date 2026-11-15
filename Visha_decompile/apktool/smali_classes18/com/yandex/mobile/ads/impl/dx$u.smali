.class final Lcom/yandex/mobile/ads/impl/dx$u;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$u;->b:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/kl0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$u;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dx;->m(Lcom/yandex/mobile/ads/impl/dx;)Lu95;

    move-result-object p0

    new-instance v1, Lcom/yandex/mobile/ads/impl/uj;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/uj;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/kl0;-><init>(Lu95;Lcom/yandex/mobile/ads/impl/uj;)V

    return-object v0
.end method
