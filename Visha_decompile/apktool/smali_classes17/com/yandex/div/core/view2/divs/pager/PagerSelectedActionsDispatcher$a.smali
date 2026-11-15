.class public final Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public d:I

.field public final e:Lhg;

.field public final synthetic f:Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->f:Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->d:I

    new-instance p1, Lhg;

    invoke-direct {p1}, Lhg;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->e:Lhg;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->e:Lhg;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->e:Lhg;

    invoke-virtual {v0}, Lhg;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lne5;->a:Lne5;

    sget-object v2, Lcom/yandex/div/logging/Severity;->DEBUG:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v1, v2}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch selected actions for page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "Ya:PagerSelectedActionsTracker"

    invoke-virtual {v1, v3, v4, v2}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->f:Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;

    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->d(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    invoke-static {v1, v0}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;->a(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;Lzl2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->a()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    sget-object v0, Lne5;->a:Lne5;

    sget-object v1, Lcom/yandex/div/logging/Severity;->DEBUG:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v0, v1}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "Ya:PagerSelectedActionsTracker"

    invoke-virtual {v0, v2, v3, v1}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->d:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->e:Lhg;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->d:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->a()V

    :cond_3
    iput p1, p0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher$a;->d:I

    return-void
.end method
