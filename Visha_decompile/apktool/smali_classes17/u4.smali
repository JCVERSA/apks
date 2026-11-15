.class public final synthetic Lu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    iget-object p0, p0, Lu4;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    invoke-static {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V

    return-void
.end method
