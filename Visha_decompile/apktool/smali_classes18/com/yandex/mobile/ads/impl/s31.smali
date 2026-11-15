.class public final Lcom/yandex/mobile/ads/impl/s31;
.super Lcom/yandex/mobile/ads/impl/vg2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/vg2<",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "Ljava/util/List<",
        "+",
        "Lcom/yandex/mobile/ads/impl/xj0;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/sj0;

.field private final d:Lcom/yandex/mobile/ads/impl/sp1;

.field private final e:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s31;->c:Lcom/yandex/mobile/ads/impl/sj0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s31;->d:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s31;->e:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    check-cast p2, Ljava/util/List;

    const-string p0, "viewPager"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "imageValues"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p0, p0, Lcom/yandex/mobile/ads/impl/p31;

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    check-cast p2, Ljava/util/List;

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValues"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/p31;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s31;->c:Lcom/yandex/mobile/ads/impl/sj0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s31;->e:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v0, v1, p2, v2}, Lcom/yandex/mobile/ads/impl/p31;-><init>(Lcom/yandex/mobile/ads/impl/sj0;Ljava/util/List;Lcom/yandex/mobile/ads/impl/o8;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s31;->d:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "IllegalArgumentException: set adapter exception"

    :cond_0
    invoke-interface {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
