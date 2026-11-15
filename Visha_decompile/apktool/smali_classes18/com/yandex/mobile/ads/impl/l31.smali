.class public final Lcom/yandex/mobile/ads/impl/l31;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/wg2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/wg2<",
            "Landroid/widget/ImageView;",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/fk0;)V
    .locals 1

    const-string v0, "imageView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageViewAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/wg2;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/wg2;-><init>(Lcom/yandex/mobile/ads/impl/vg2;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l31;->a:Lcom/yandex/mobile/ads/impl/wg2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l31;->a:Lcom/yandex/mobile/ads/impl/wg2;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wg2;->b(Ljava/lang/Object;)V

    return-void
.end method
