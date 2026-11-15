.class final Lcom/yandex/mobile/ads/impl/dx$h;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$h;->b:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/yandex/mobile/ads/impl/cx;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dx$h;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/dx;->q(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/rz0;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/dx$h;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/dx;->r(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/zz0;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/dx$h;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/dx;->a(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/ww;

    move-result-object v3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$h;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dx;->v(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/wz0;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yandex/mobile/ads/impl/cx;-><init>(Lcom/yandex/mobile/ads/impl/rz0;Lcom/yandex/mobile/ads/impl/zz0;Lcom/yandex/mobile/ads/impl/ww;Lcom/yandex/mobile/ads/impl/wz0;)V

    return-object v0
.end method
