.class public final Lcom/yandex/div/core/view2/AccessibilityListDelegate;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/AccessibilityListDelegate$ItemAccessibilityDelegate;,
        Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0000\u0018\u00002\u00020\u0001:\u0002>,B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\r*\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0013\u0010 \u001a\u00020\r*\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R$\u0010*\u001a\u0012\u0012\u0004\u0012\u00020&0%j\u0008\u0012\u0004\u0012\u00020&`\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R$\u00107\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u00148\u0002@BX\u0082\u000e\u00a2\u0006\u000c\n\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0018\u0010:\u001a\u00020\t*\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u001a\u0010=\u001a\u0004\u0018\u00010\t*\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<\u00a8\u0006?"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/AccessibilityListDelegate;",
        "Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;",
        "Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;",
        "recyclerView",
        "<init>",
        "(Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;)V",
        "Landroidx/core/view/AccessibilityDelegateCompat;",
        "getItemDelegate",
        "()Landroidx/core/view/AccessibilityDelegateCompat;",
        "Landroid/view/View;",
        "host",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "info",
        "Lzfb;",
        "onInitializeAccessibilityNodeInfo",
        "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V",
        "",
        "action",
        "Landroid/os/Bundle;",
        "args",
        "",
        "performAccessibilityAction",
        "(Landroid/view/View;ILandroid/os/Bundle;)Z",
        "h",
        "()V",
        "i",
        "g",
        "m",
        "()Z",
        "p",
        "(Landroid/view/View;)V",
        "Landroid/view/ViewGroup;",
        "l",
        "(Landroid/view/ViewGroup;)V",
        "n",
        "a",
        "Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;",
        "Ljava/util/ArrayList;",
        "Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;",
        "Lkotlin/collections/ArrayList;",
        "b",
        "Ljava/util/ArrayList;",
        "list",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "c",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "visibilityListener",
        "d",
        "Landroidx/core/view/AccessibilityDelegateCompat;",
        "itemDelegate",
        "value",
        "e",
        "Z",
        "o",
        "(Z)V",
        "isItemsFocusActive",
        "k",
        "(Landroid/view/View;)Landroid/view/View;",
        "unwrap",
        "j",
        "(Landroid/view/ViewGroup;)Landroid/view/View;",
        "firstChild",
        "ItemAccessibilityDelegate",
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
.field public final a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public d:Landroidx/core/view/AccessibilityDelegateCompat;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->b:Ljava/util/ArrayList;

    new-instance v0, Lu4;

    invoke-direct {v0, p0}, Lu4;-><init>(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V

    iput-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate$a;-><init>(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->p(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    new-instance v0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$b;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate$b;-><init>(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;->setOnBackClickListener(Lcom/yandex/div/core/view2/backbutton/b$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->q(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->g()V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->m()Z

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/AccessibilityListDelegate;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->p(Landroid/view/View;)V

    return-void
.end method

.method public static final q(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->g()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->o(Z)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->n()V

    return-void
.end method

.method public getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->d:Landroidx/core/view/AccessibilityDelegateCompat;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$ItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate$ItemAccessibilityDelegate;-><init>(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V

    iput-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->d:Landroidx/core/view/AccessibilityDelegateCompat;

    :cond_0
    return-object v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->o(Z)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->l(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->j(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->k(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->V(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->V(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->g()V

    return-void
.end method

.method public final j(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Le74;

    sget-object v0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$firstChild$1;->INSTANCE:Lcom/yandex/div/core/view2/AccessibilityListDelegate$firstChild$1;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/yandex/div/core/view2/AccessibilityListDelegate$firstChild$2;->INSTANCE:Lcom/yandex/div/core/view2/AccessibilityListDelegate$firstChild$2;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/comparisons/a;->b([Le74;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->T(Lpc9;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final k(Landroid/view/View;)Landroid/view/View;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div/core/widget/DivViewWrapper;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Lcom/yandex/div/core/widget/DivViewWrapper;

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/DivViewWrapper;->getChild()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final l(Landroid/view/ViewGroup;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object v1

    invoke-interface {v1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->b:Ljava/util/ArrayList;

    new-instance v5, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;-><init>(Ljava/lang/ref/WeakReference;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->l(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->i()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;->b()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final o(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->e:Z

    iget-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->p(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-boolean p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->e:Z

    if-eqz p1, :cond_0

    const-class p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-interface {p1}, Lde5;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class p1, Landroid/widget/Button;

    invoke-static {p1}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object p1

    invoke-interface {p1}, Lde5;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->a:Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->p(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final p(Landroid/view/View;)V
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->e:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    const-string v0, "host"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;->h()V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method
