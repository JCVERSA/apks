.class public final Lcom/yandex/mobile/ads/impl/h31;
.super Lcom/yandex/mobile/ads/impl/yn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/h31$a;
    }
.end annotation


# static fields
.field static final synthetic g:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/r31;

.field private final d:Lcom/yandex/mobile/ads/impl/k31;

.field private final e:Lcom/yandex/mobile/ads/impl/go1;

.field private f:Lcom/yandex/mobile/ads/impl/h31$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getViewPager()Landroidx/viewpager2/widget/ViewPager2;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/h31;

    const-string v3, "viewPager"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/h31;->g:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/mobile/ads/impl/r31;Lcom/yandex/mobile/ads/impl/k31;)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiBannerSwiper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiBannerEventTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/yn;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h31;->c:Lcom/yandex/mobile/ads/impl/r31;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/h31;->d:Lcom/yandex/mobile/ads/impl/k31;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h31;->e:Lcom/yandex/mobile/ads/impl/go1;

    sget-object p1, Lcom/yandex/mobile/ads/impl/h31$a;->b:Lcom/yandex/mobile/ads/impl/h31$a;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h31;->f:Lcom/yandex/mobile/ads/impl/h31$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h31;->e:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/h31;->g:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/wh2;->b(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/h31$a;->b:Lcom/yandex/mobile/ads/impl/h31$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/h31;->f:Lcom/yandex/mobile/ads/impl/h31$a;

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/yandex/mobile/ads/impl/h31$a;->c:Lcom/yandex/mobile/ads/impl/h31$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/h31;->f:Lcom/yandex/mobile/ads/impl/h31$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yn;->a()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h31;->f:Lcom/yandex/mobile/ads/impl/h31$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h31;->c:Lcom/yandex/mobile/ads/impl/r31;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r31;->b()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h31;->c:Lcom/yandex/mobile/ads/impl/r31;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r31;->a()V

    :goto_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h31;->d:Lcom/yandex/mobile/ads/impl/k31;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/k31;->a()V

    :cond_6
    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/yn;->a()V

    :cond_8
    return-void
.end method
