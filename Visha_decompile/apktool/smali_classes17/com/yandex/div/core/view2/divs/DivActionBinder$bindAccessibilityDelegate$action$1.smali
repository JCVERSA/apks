.class final Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivActionBinder;->o(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAccessibility;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "<anonymous parameter 0>",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "info",
        "Lzfb;",
        "invoke",
        "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $accessibility:Lcom/yandex/div2/DivAccessibility;

.field final synthetic $actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $longTapActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/yandex/div2/DivAccessibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yandex/div2/DivAction;",
            ">;",
            "Landroid/view/View;",
            "Lcom/yandex/div2/DivAccessibility;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$actions:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$longTapActions:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$target:Landroid/view/View;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$accessibility:Lcom/yandex/div2/DivAccessibility;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->invoke(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$actions:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 4
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$longTapActions:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 6
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_LONG_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 7
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$target:Landroid/view/View;

    instance-of p1, p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$accessibility:Lcom/yandex/div2/DivAccessibility;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/yandex/div2/DivAccessibility$Type;->AUTO:Lcom/yandex/div2/DivAccessibility$Type;

    if-eq v1, v2, :cond_3

    if-nez p1, :cond_9

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$longTapActions:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$actions:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;->$accessibility:Lcom/yandex/div2/DivAccessibility;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    goto :goto_2

    .line 10
    :cond_6
    const-string p0, ""

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    :goto_1
    if-nez p2, :cond_8

    goto :goto_2

    .line 11
    :cond_8
    const-string p0, "android.widget.ImageView"

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method
