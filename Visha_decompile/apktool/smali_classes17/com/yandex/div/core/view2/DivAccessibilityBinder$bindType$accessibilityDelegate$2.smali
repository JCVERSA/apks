.class final Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/DivAccessibilityBinder;->d(Landroid/view/View;Log2;Lcom/yandex/div2/DivAccessibility$Type;Loj3;)V
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
.field final synthetic $accessibilityType:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

.field final synthetic this$0:Lcom/yandex/div/core/view2/DivAccessibilityBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/DivAccessibilityBinder;Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;->this$0:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;->$accessibilityType:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

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

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;->invoke(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;->this$0:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;->$accessibilityType:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    invoke-static {p1, p2, p0}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->a(Lcom/yandex/div/core/view2/DivAccessibilityBinder;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;)V

    :cond_0
    return-void
.end method
