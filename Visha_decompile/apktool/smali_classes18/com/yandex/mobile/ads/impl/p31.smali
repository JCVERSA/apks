.class public final Lcom/yandex/mobile/ads/impl/p31;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yandex/mobile/ads/impl/l31;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/m31;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sj0;Ljava/util/List;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "imageProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValues"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p31;->a:Ljava/util/List;

    new-instance p2, Lcom/yandex/mobile/ads/impl/m31;

    invoke-direct {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/m31;-><init>(Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p31;->b:Lcom/yandex/mobile/ads/impl/m31;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p31;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/yandex/mobile/ads/impl/l31;

    const-string v0, "holderImage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p31;->a:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/l31;->a(Lcom/yandex/mobile/ads/impl/xj0;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p31;->b:Lcom/yandex/mobile/ads/impl/m31;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/m31;->a(Landroid/view/ViewGroup;)Lcom/yandex/mobile/ads/impl/l31;

    move-result-object p0

    return-object p0
.end method
