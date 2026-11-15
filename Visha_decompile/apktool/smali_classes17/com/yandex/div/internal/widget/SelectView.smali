.class public Lcom/yandex/div/internal/widget/SelectView;
.super Lcom/yandex/div/internal/widget/EllipsizedTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/SelectView$PopupWindow;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001:\u00014B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\n\u001a\u00020\t2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ7\u0010\u0013\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR0\u0010\'\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010/\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102\u00a8\u00065"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/SelectView;",
        "Lcom/yandex/div/internal/widget/EllipsizedTextView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "",
        "items",
        "Lzfb;",
        "setItems",
        "(Ljava/util/List;)V",
        "",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "onDetachedFromWindow",
        "()V",
        "Landroid/view/View;",
        "changedView",
        "visibility",
        "onVisibilityChanged",
        "(Landroid/view/View;I)V",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        "info",
        "onInitializeAccessibilityNodeInfo",
        "(Landroid/view/accessibility/AccessibilityNodeInfo;)V",
        "Lkotlin/Function1;",
        "r",
        "Le74;",
        "getOnItemSelectedListener",
        "()Le74;",
        "setOnItemSelectedListener",
        "(Le74;)V",
        "onItemSelectedListener",
        "La15;",
        "s",
        "La15;",
        "getFocusTracker",
        "()La15;",
        "setFocusTracker",
        "(La15;)V",
        "focusTracker",
        "Lcom/yandex/div/internal/widget/SelectView$PopupWindow;",
        "t",
        "Lcom/yandex/div/internal/widget/SelectView$PopupWindow;",
        "popupWindow",
        "PopupWindow",
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
.field public r:Le74;

.field public s:La15;

.field public final t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/EllipsizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lpb9;

    invoke-direct {v0, p0}, Lpb9;-><init>(Lcom/yandex/div/internal/widget/SelectView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v1, Lcom/yandex/div/internal/widget/a;

    invoke-direct {v1, p0, v0}, Lcom/yandex/div/internal/widget/a;-><init>(Lcom/yandex/div/internal/widget/SelectView;Lcom/yandex/div/internal/widget/SelectView$PopupWindow;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->b()Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    return-void
.end method

.method public static synthetic m(Lcom/yandex/div/internal/widget/SelectView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/SelectView;->o(Lcom/yandex/div/internal/widget/SelectView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/yandex/div/internal/widget/SelectView;Lcom/yandex/div/internal/widget/SelectView$PopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/yandex/div/internal/widget/SelectView;->p(Lcom/yandex/div/internal/widget/SelectView;Lcom/yandex/div/internal/widget/SelectView$PopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static final o(Lcom/yandex/div/internal/widget/SelectView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/SelectView;->s:La15;

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G(Landroid/view/View;La15;)V

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->c()V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->show()V

    return-void
.end method

.method public static final p(Lcom/yandex/div/internal/widget/SelectView;Lcom/yandex/div/internal/widget/SelectView$PopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->r:Le74;

    if-eqz p0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getFocusTracker()La15;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->s:La15;

    return-object p0
.end method

.method public final getOnItemSelectedListener()Le74;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le74;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->r:Le74;

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->show()V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setFocusTracker(La15;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SelectView;->s:La15;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SelectView;->t:Lcom/yandex/div/internal/widget/SelectView$PopupWindow;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow;->b()Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;->d(Ljava/util/List;)V

    return-void
.end method

.method public final setOnItemSelectedListener(Le74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SelectView;->r:Le74;

    return-void
.end method
