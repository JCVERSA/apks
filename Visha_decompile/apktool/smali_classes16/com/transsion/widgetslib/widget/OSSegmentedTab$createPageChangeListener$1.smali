.class public final Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSSegmentedTab;->q()Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;
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
        "com/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
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
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->access$handlePageScrollStateChanged(Lcom/transsion/widgetslib/widget/OSSegmentedTab;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-static {p3}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->access$getMIsClickTriggered$p(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->access$scroll(Lcom/transsion/widgetslib/widget/OSSegmentedTab;IF)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->access$getMIsClickTriggered$p(Lcom/transsion/widgetslib/widget/OSSegmentedTab;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/OSSegmentedTab$createPageChangeListener$1;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->setSelectedPosition$default(Lcom/transsion/widgetslib/widget/OSSegmentedTab;ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
