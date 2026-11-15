.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->o(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/div2/DivPager;Le74;)Lqc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic d:Le74;

.field public final synthetic e:Lcom/yandex/div2/DivPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Le74;Lcom/yandex/div2/DivPager;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->c:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->d:Le74;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->e:Lcom/yandex/div2/DivPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance p3, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1$special$$inlined$doOnPreDraw$1;

    invoke-direct {p3, p1, p0, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1$special$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;Le74;)V

    invoke-static {p1, p3}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;)I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->d()I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->b:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->c:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "v"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->d()I

    move-result p1

    iget p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->b:I

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->e:Lcom/yandex/div2/DivPager;

    iget-object p1, p1, Lcom/yandex/div2/DivPager;->u:Lcom/yandex/div2/DivPagerLayoutMode;

    instance-of p1, p1, Lcom/yandex/div2/DivPagerLayoutMode$c;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->b:I

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;->d:Le74;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
