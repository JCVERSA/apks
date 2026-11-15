.class public final Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2;->invoke()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1",
        "Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;",
        "onRequestSendAccessibilityEvent",
        "",
        "host",
        "Landroid/view/ViewGroup;",
        "child",
        "Landroid/view/View;",
        "event",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "div_release"
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
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;->b:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    const-string v0, "host"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;->b:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    invoke-static {v0, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->access$getFocusedChildPos(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;->b:Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v3

    if-eq v3, v0, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getCurrentItem$div_release()I

    move-result v1

    if-le v0, v1, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    :cond_0
    const/16 v0, 0x2000

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
