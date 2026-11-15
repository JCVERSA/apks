.class final Lcom/yandex/mobile/ads/impl/dx$k0;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$k0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/dx$k0;->c:Lcom/yandex/mobile/ads/impl/dx;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/xv1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/dx$k0;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$k0;->c:Lcom/yandex/mobile/ads/impl/dx;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/dx;->u(Lcom/yandex/mobile/ads/impl/dx;)Lcom/yandex/mobile/ads/impl/i11;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/xv1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/i11;)V

    return-object v0
.end method
