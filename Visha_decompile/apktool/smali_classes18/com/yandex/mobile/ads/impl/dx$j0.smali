.class final Lcom/yandex/mobile/ads/impl/dx$j0;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$j0;->b:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/yandex/mobile/ads/impl/ep0;

    new-instance v1, Lcom/yandex/mobile/ads/impl/f32;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/f32;-><init>()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$j0;->b:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dx;->m(Lcom/yandex/mobile/ads/impl/dx;)Lu95;

    move-result-object p0

    new-instance v2, Lcom/yandex/mobile/ads/impl/ui2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/ui2;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/ep0;-><init>(Lcom/yandex/mobile/ads/impl/f32;Lu95;Lcom/yandex/mobile/ads/impl/ui2;)V

    return-object v0
.end method
