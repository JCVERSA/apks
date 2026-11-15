.class public final Lcom/yandex/mobile/ads/impl/zg2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lyi5;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/zg2$a;->b:Lcom/yandex/mobile/ads/impl/zg2$a;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/zg2;->a:Lyi5;

    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;Z)V
    .locals 2

    sget-object v0, Lcom/yandex/mobile/ads/impl/zg2;->a:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lp4e;

    invoke-direct {v1, p0, p1}, Lp4e;-><init>(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final b(Landroid/view/ViewGroup;Z)V
    .locals 5

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    xor-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    if-lez v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/yandex/mobile/ads/impl/vk;

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    if-ge v1, p0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/vk;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vk;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public static synthetic c(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/zg2;->b(Landroid/view/ViewGroup;Z)V

    return-void
.end method
