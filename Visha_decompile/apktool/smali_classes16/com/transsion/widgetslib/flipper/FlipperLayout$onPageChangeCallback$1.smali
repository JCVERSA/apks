.class public final Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/flipper/FlipperLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "com/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "Lzfb;",
        "onPageScrolled",
        "(IFI)V",
        "onPageSelected",
        "(I)V",
        "state",
        "onPageScrollStateChanged",
        "widgetsLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentPst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperLayout"

    invoke-static {v1, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$isAutoPlay$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$sendScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$removeScrollMsg(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->isCyclic$widgetsLib_release()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$isSinglePage(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "viewPager"

    if-nez p1, :cond_2

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object v2, v0

    :cond_3
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v2, v4, v3}, Lty3;->e(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {p0, v2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$updateDotSelection(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    :cond_4
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getViewPager$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, p1

    :goto_1
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p1

    invoke-static {v0, p1, v3}, Lty3;->e(Landroidx/viewpager2/widget/ViewPager2;IZ)V

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getAttachHeadTailItem$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$updateDotSelection(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    :cond_6
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$updateDotSelection(Lcom/transsion/widgetslib/flipper/FlipperLayout;IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$getCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentPst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperLayout"

    invoke-static {v1, v0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$updateDotSelection(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setCurrentPst$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$isAutoFlipping$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$setAutoFlipping$p(Lcom/transsion/widgetslib/flipper/FlipperLayout;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/flipper/FlipperLayout$onPageChangeCallback$1;->d:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->access$updateTextFromPosition(Lcom/transsion/widgetslib/flipper/FlipperLayout;I)V

    :goto_0
    return-void
.end method
