.class final Lcom/yandex/mobile/ads/impl/a61;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/sj0;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/xj0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a61;->b:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a61;->c:Lcom/yandex/mobile/ads/impl/xj0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a61;->b:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/a61;->c:Lcom/yandex/mobile/ads/impl/xj0;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/sj0;->b(Lcom/yandex/mobile/ads/impl/xj0;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
