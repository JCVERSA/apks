.class public Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager$a;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->setEdgeScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager$a;->a:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeDragStarted(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager$a;->a:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {p0, v0}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->a(Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;Z)Z

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
