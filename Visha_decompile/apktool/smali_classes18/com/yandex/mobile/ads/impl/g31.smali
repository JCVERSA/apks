.class public final Lcom/yandex/mobile/ads/impl/g31;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field private final a:Lcom/yandex/mobile/ads/impl/r31;

.field private final b:Lcom/yandex/mobile/ads/impl/k31;

.field private final c:Lcom/yandex/mobile/ads/impl/kt0;

.field private final d:Lcom/yandex/mobile/ads/impl/go1;

.field private e:Lcom/yandex/mobile/ads/impl/jt0;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getViewPager()Landroidx/viewpager2/widget/ViewPager2;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/g31;

    const-string v3, "viewPager"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/g31;->g:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/mobile/ads/impl/r31;Lcom/yandex/mobile/ads/impl/k31;Lcom/yandex/mobile/ads/impl/kt0;)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiBannerSwiper"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiBannerEventTracker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobSchedulerFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g31;->a:Lcom/yandex/mobile/ads/impl/r31;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/g31;->b:Lcom/yandex/mobile/ads/impl/k31;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/g31;->c:Lcom/yandex/mobile/ads/impl/kt0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g31;->d:Lcom/yandex/mobile/ads/impl/go1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/g31;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g31;->b()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/g31;->f:Z

    return-void
.end method

.method public final a(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/g31;->f:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g31;->b()V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g31;->d:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/g31;->g:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/h31;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/g31;->a:Lcom/yandex/mobile/ads/impl/r31;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/g31;->b:Lcom/yandex/mobile/ads/impl/k31;

    invoke-direct {v1, v0, v3, v4}, Lcom/yandex/mobile/ads/impl/h31;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/mobile/ads/impl/r31;Lcom/yandex/mobile/ads/impl/k31;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g31;->c:Lcom/yandex/mobile/ads/impl/kt0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Lcom/yandex/mobile/ads/impl/jt0;

    .line 9
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/impl/jt0;-><init>(Landroid/os/Handler;)V

    .line 11
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/g31;->e:Lcom/yandex/mobile/ads/impl/jt0;

    .line 12
    invoke-virtual {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/jt0;->a(JLcom/yandex/mobile/ads/impl/h31;)V

    sget-object p1, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g31;->b()V

    .line 14
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/g31;->f:Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g31;->e:Lcom/yandex/mobile/ads/impl/jt0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jt0;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/g31;->e:Lcom/yandex/mobile/ads/impl/jt0;

    return-void
.end method
