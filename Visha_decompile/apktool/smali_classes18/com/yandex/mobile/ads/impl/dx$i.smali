.class final Lcom/yandex/mobile/ads/impl/dx$i;
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
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/dx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dx$i;->c:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/kx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dx$i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/dx$i;->c:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/dx;->p(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/fz0;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/tz0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$i;->b:Landroid/content/Context;

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/tz0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/kx;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/fz0;Lcom/yandex/mobile/ads/impl/tz0;)V

    return-object v0
.end method
