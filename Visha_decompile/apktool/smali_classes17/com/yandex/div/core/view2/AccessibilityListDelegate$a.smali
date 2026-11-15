.class public final Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/AccessibilityListDelegate;-><init>(Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    invoke-static {p1}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->c(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    invoke-static {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->d(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    invoke-static {p1}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->c(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    invoke-static {v0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->d(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;->b:Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    invoke-static {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->b(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V

    return-void
.end method
