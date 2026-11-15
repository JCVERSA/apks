.class public Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->g(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Z)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-static {p3, p2}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->i(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageScrolled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isUserScrolling: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicModelMainLayout"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->e(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->g(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iget-object p2, p2, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$a;->d:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageSelected-: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MusicModelMainLayout"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method
