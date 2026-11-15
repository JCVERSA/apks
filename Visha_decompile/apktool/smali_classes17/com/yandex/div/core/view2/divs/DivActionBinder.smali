.class public Lcom/yandex/div/core/view2/divs/DivActionBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;
    }
.end annotation


# instance fields
.field public final a:Lcf2;

.field public final b:Lgd2;

.field public final c:Lce2;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Le74;


# direct methods
.method public constructor <init>(Lcf2;Lgd2;Lce2;ZZZ)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBeaconSender"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->a:Lcf2;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->b:Lgd2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->c:Lce2;

    iput-boolean p4, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->d:Z

    iput-boolean p5, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->e:Z

    iput-boolean p6, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->f:Z

    sget-object p1, Lcom/yandex/div/core/view2/divs/DivActionBinder$passToParentLongClickListener$1;->INSTANCE:Lcom/yandex/div/core/view2/divs/DivActionBinder$passToParentLongClickListener$1;

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->g:Le74;

    return-void
.end method

.method public static final B(Le74;Landroid/view/View;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;ILjava/lang/Object;)Z
    .locals 7

    if-nez p8, :cond_4

    and-int/lit8 v0, p7, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/yandex/div/core/view2/Div2View;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/yandex/div/core/view2/Div2View;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getActionHandler()Lcf2;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->D(Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;)Z

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: handleAction"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic G(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;ILjava/lang/Object;)Z
    .locals 7

    if-nez p8, :cond_4

    and-int/lit8 v0, p7, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/yandex/div/core/view2/Div2View;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/yandex/div/core/view2/Div2View;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getActionHandler()Lcf2;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->F(Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;)Z

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: handleActionWithoutEnableCheck"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic I(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->H(Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: handleActions"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic K(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, "click"

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: handleBulkActions"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->n(Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->v(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->u(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->s(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Le74;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->B(Le74;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->y(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->x(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 0

    invoke-virtual/range {p0 .. p12}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->l(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    return-void
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lce2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->c:Lce2;

    return-object p0
.end method

.method public static final synthetic j(Lcom/yandex/div/core/view2/divs/DivActionBinder;)Lgd2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->b:Lgd2;

    return-object p0
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/divs/DivActionBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "$nnListeners"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls74;

    const-string v3, "view"

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "motionEvent"

    invoke-static {p2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static final s(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p5, "this$0"

    invoke-static {p0, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$context"

    invoke-static {p1, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$target"

    invoke-static {p2, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$startActions"

    invoke-static {p3, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$endActions"

    invoke-static {p4, p5}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/view/MotionEvent;->getAction()I

    move-result p5

    const/16 p6, 0x9

    if-eq p5, p6, :cond_1

    const/16 p3, 0xa

    if-eq p5, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "unhover"

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p4, "hover"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final u(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z
    .locals 2

    const-string v0, "$captureFocusOnAction"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$target"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$actions"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getInputFocusTracker$div_release()La15;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-static {p5, p0, v0, v1}, Lme2;->a(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V

    const-string p0, "long_click"

    invoke-virtual {p2, p1, p3, p4, p0}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final v(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Z
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$captureFocusOnAction"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$overflowMenuWrapper"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$target"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$actions"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->c:Lce2;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lce2;->c(Lcom/yandex/div2/DivAction;Loj3;)V

    const-string p1, "it"

    invoke-static {p7, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getInputFocusTracker$div_release()La15;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-static {p7, p3, p1, v1}, Lme2;->a(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V

    invoke-virtual {p4}, Lzt7;->c()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-interface {p1, p5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    check-cast p6, Ljava/lang/Iterable;

    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lcom/yandex/div2/DivAction;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->b:Lgd2;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    move-object v4, p5

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lgd2;->i(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final x(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$target"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$captureFocusOnAction"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$overflowMenuWrapper"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->b:Lgd2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2, p3}, Lgd2;->c(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->c:Lce2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lce2;->c(Lcom/yandex/div2/DivAction;Loj3;)V

    const-string p0, "it"

    invoke-static {p6, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getInputFocusTracker$div_release()La15;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p1

    invoke-static {p6, p4, p0, p1}, Lme2;->a(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V

    invoke-virtual {p5}, Lzt7;->c()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static final y(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;Landroid/view/View;)V
    .locals 9

    const-string v0, "$captureFocusOnAction"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$target"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$actions"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getInputFocusTracker$div_release()La15;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-static {p5, p0, v0, v1}, Lme2;->a(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v2 .. v8}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->K(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final z(Lbk2;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lbk2;->a()Lc74;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindTapActions$setTapListener$1;

    invoke-direct {v0, p2, p1}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindTapActions$setTapListener$1;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lbk2;->d(Lc74;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lme2;->e(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->g:Le74;

    new-instance p2, Lje2;

    invoke-direct {p2, p0}, Lje2;-><init>(Le74;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p0, 0x1

    invoke-static {p1, v1, p0, v1}, Lme2;->n(Landroid/view/View;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-static {p1, v1}, Lme2;->f(Landroid/view/View;Ljava/lang/Boolean;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final C(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)Ls74;
    .locals 7

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v6, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivActionBinder$createPressTouchListener$1;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    move-object p0, v6

    :goto_1
    return-object p0
.end method

.method public D(Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;)Z
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->F(Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;)Z

    move-result p0

    return p0
.end method

.method public F(Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;)Z
    .locals 8

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->a:Lcf2;

    invoke-virtual {v0}, Lcf2;->getUseActionUid()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    move-object v2, p6

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcf2;->handleActionWithReason(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-ne p6, v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->a:Lcf2;

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcf2;->handleActionWithReason(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6, p3, p1, p2, p4}, Lcf2;->handleActionWithReason(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;)Z

    move-result p5

    if-ne p5, v1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->a:Lcf2;

    invoke-virtual {p0, p3, p1, p2, p4}, Lcf2;->handleActionWithReason(Lcom/yandex/div2/DivAction;Lsv2;Loj3;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public H(Lsv2;Loj3;Ljava/util/List;Ljava/lang/String;Le74;)V
    .locals 10

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p3, p2}, Lme2;->d(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAction;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->G(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lsv2;Loj3;Lcom/yandex/div2/DivAction;Ljava/lang/String;Ljava/lang/String;Lcf2;ILjava/lang/Object;)Z

    if-eqz p5, :cond_1

    invoke-interface {p5, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public J(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionLogType"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    new-instance p1, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder$handleBulkActions$1;-><init>(Ljava/util/List;Loj3;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/view2/Div2View;->bulkActions$div_release(Lc74;)V

    return-void
.end method

.method public L(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-static {p3, v0}, Lme2;->d(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v4

    move-object p3, v4

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivAction;

    iget-object v2, v2, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    check-cast v1, Lcom/yandex/div2/DivAction;

    if-eqz v1, :cond_5

    iget-object p3, v1, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-nez p3, :cond_4

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to bind empty menu action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v2, Lzt7;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    invoke-direct {v2, v3, p2, v4}, Lzt7;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)V

    new-instance v3, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;

    invoke-direct {v3, p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lzt7;->e(Lzt7$a;)Lzt7;

    move-result-object p3

    const/16 v2, 0x35

    invoke-virtual {p3, v2}, Lzt7;->f(I)Lzt7;

    move-result-object p3

    const-string v2, "OverflowMenuWrapper(\n   \u2026ity.RIGHT or Gravity.TOP)"

    invoke-static {p3, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/Div2View;->clearSubscriptions()V

    new-instance v3, Lle2;

    invoke-direct {v3, p3}, Lle2;-><init>(Lzt7;)V

    invoke-virtual {v2, v3}, Lcom/yandex/div/core/view2/Div2View;->subscribe(Lxt7;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->b:Lgd2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-interface {v2, p1, v0, p2, v1}, Lgd2;->c(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/DivAction;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->c:Lce2;

    invoke-virtual {p0, v1, v0}, Lce2;->c(Lcom/yandex/div2/DivAction;Loj3;)V

    invoke-virtual {p3}, Lzt7;->c()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->K(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final M(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "double_click"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string p0, "release"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string p0, "press"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string p0, "hover"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string p0, "focus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_5
    const-string p0, "enter"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_6
    const-string p0, "click"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_7
    const-string p0, "blur"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_8
    const-string p0, "unhover"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_9
    const-string p0, "long_click"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    const-string p0, "external"

    :cond_0
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1432ddfb -> :sswitch_9
        -0x11240dbd -> :sswitch_8
        0x2e3067 -> :sswitch_7
        0x5a5c588 -> :sswitch_6
        0x5c306d8 -> :sswitch_5
        0x5d154d8 -> :sswitch_4
        0x5edc93c -> :sswitch_3
        0x65fa443 -> :sswitch_2
        0x41012807 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch
.end method

.method public final l(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isClickable()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isLongClickable()Z

    move-result v6

    new-instance v5, Lbk2;

    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p2 .. p2}, Lme2;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v14

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v13

    :goto_1
    invoke-direct {v5, v0}, Lbk2;-><init>(Z)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v16, v5

    move-object/from16 v5, p12

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->t(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;ZLcom/yandex/div/json/expressions/Expression;)V

    move-object/from16 v3, v16

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->q(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lbk2;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;)V

    iget-boolean v5, v7, Lcom/yandex/div/core/view2/divs/DivActionBinder;->e:Z

    move-object/from16 v4, p3

    move/from16 v17, v6

    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->w(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lbk2;Ljava/util/List;ZLcom/yandex/div/json/expressions/Expression;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/List;

    aput-object v10, v0, v14

    aput-object v11, v0, v13

    aput-object p5, v0, v12

    invoke-static {v0}, Lw71;->a([Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v0, p10

    :goto_2
    move-object/from16 v1, v16

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    invoke-static {v9, v8, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->H(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAnimation;Lbk2;)Ls74;

    move-result-object v0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-virtual {v7, v8, v9, v1, v2}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->C(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)Ls74;

    move-result-object v1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v7, v8, v9, v2, v3}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->r(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    new-array v2, v12, [Ls74;

    aput-object v0, v2, v14

    aput-object v1, v2, v13

    invoke-virtual {v7, v9, v2}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->m(Landroid/view/View;[Ls74;)V

    iget-boolean v0, v7, Lcom/yandex/div/core/view2/divs/DivActionBinder;->f:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/yandex/div2/DivAccessibility$Mode;->MERGE:Lcom/yandex/div2/DivAccessibility$Mode;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/yandex/div/core/view2/Div2View;->getPropagatedAccessibilityMode$div_release(Landroid/view/View;)Lcom/yandex/div2/DivAccessibility$Mode;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/yandex/div/core/view2/Div2View;->isDescendantAccessibilityMode$div_release(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9, v15}, Landroid/view/View;->setClickable(Z)V

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setLongClickable(Z)V

    :cond_3
    move-object/from16 v0, p11

    invoke-virtual {v7, v9, v10, v11, v0}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->o(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAccessibility;)V

    :cond_4
    return-void
.end method

.method public final varargs m(Landroid/view/View;[Ls74;)V
    .locals 0

    invoke-static {p2}, Lhi;->S([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lde2;

    invoke-direct {p2, p0}, Lde2;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method public final o(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAccessibility;)V
    .locals 6

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v1

    new-instance v3, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;

    invoke-direct {v3, p2, p3, p1, p4}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindAccessibilityDelegate$action$1;-><init>(Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/yandex/div2/DivAccessibility;)V

    instance-of p0, v1, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;

    if-eqz p0, :cond_0

    check-cast v1, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;

    invoke-virtual {v1, v3}, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;->a(Ls74;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;Ls74;Ls74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    :goto_0
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public p(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 17

    move-object/from16 v15, p2

    move-object/from16 v14, p12

    const-string v0, "context"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionAnimation"

    move-object/from16 v12, p10

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureFocusOnAction"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v13

    new-instance v11, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$onApply$1;

    move-object v0, v11

    move-object/from16 v1, p3

    move-object v2, v13

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p0

    move-object v15, v11

    move-object/from16 v11, p2

    move-object/from16 v16, v13

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v14}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$onApply$1;-><init>(Ljava/util/List;Loj3;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$1;

    invoke-direct {v0, v15}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$1;-><init>(Lc74;)V

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v4, v15

    move-object/from16 v3, v16

    invoke-static {v1, v2, v3, v0}, Lme2;->c(Landroid/view/View;Ljava/util/List;Loj3;Le74;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$2;

    invoke-direct {v0, v4}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$2;-><init>(Lc74;)V

    move-object/from16 v2, p4

    invoke-static {v1, v2, v3, v0}, Lme2;->c(Landroid/view/View;Ljava/util/List;Loj3;Le74;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$3;

    invoke-direct {v0, v4}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$3;-><init>(Lc74;)V

    move-object/from16 v2, p5

    invoke-static {v1, v2, v3, v0}, Lme2;->c(Landroid/view/View;Ljava/util/List;Loj3;Le74;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$4;

    invoke-direct {v0, v4}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDivActions$1$4;-><init>(Lc74;)V

    move-object/from16 v2, p12

    invoke-static {v1, v2, v3, v0}, Lme2;->b(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;Loj3;Le74;)V

    invoke-interface {v4}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final q(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lbk2;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 9

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v1}, Lbk2;->c(Lc74;)V

    return-void

    :cond_0
    move-object v0, p4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/div2/DivAction;

    iget-object v3, v3, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/yandex/div/core/view2/divs/DivActionBinder;->e:Z

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_3
    move-object v6, v1

    check-cast v6, Lcom/yandex/div2/DivAction;

    if-eqz v6, :cond_5

    iget-object p4, v6, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-nez p4, :cond_4

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to bind empty menu action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v6, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lzt7;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lzt7;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)V

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;

    invoke-direct {v1, p0, p1, p4}, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lzt7;->e(Lzt7$a;)Lzt7;

    move-result-object p4

    const/16 v0, 0x35

    invoke-virtual {p4, v0}, Lzt7;->f(I)Lzt7;

    move-result-object v8

    const-string p4, "OverflowMenuWrapper(\n   \u2026ity.RIGHT or Gravity.TOP)"

    invoke-static {v8, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->clearSubscriptions()V

    new-instance v0, Lle2;

    invoke-direct {v0, v8}, Lle2;-><init>(Lzt7;)V

    invoke-virtual {p4, v0}, Lcom/yandex/div/core/view2/Div2View;->subscribe(Lxt7;)V

    new-instance p4, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$1$1;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;)V

    invoke-virtual {p3, p4}, Lbk2;->c(Lc74;)V

    goto :goto_1

    :cond_5
    new-instance v6, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$2;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p5

    move-object v3, p1

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivActionBinder$bindDoubleTapActions$2;-><init>(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Ljava/util/List;)V

    invoke-virtual {p3, v6}, Lbk2;->c(Lc74;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final r(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v6, Lee2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lee2;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_1
    return-void
.end method

.method public final t(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;ZLcom/yandex/div/json/expressions/Expression;)V
    .locals 12

    move-object v8, p0

    move-object v9, p2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v8, Lcom/yandex/div/core/view2/divs/DivActionBinder;->d:Z

    move/from16 v1, p4

    invoke-virtual {p0, p2, v0, v1}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->A(Landroid/view/View;ZZ)V

    return-void

    :cond_0
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivAction;

    iget-object v2, v2, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v2, v8, Lcom/yandex/div/core/view2/divs/DivActionBinder;->e:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_3
    move-object v1, v10

    :goto_1
    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivAction;

    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-nez v0, :cond_4

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind empty menu action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lzt7;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    invoke-direct {v1, v3, p2, v4}, Lzt7;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)V

    new-instance v3, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;

    move-object v4, p1

    invoke-direct {v3, p0, p1, v0}, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lzt7;->e(Lzt7$a;)Lzt7;

    move-result-object v0

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lzt7;->f(I)Lzt7;

    move-result-object v5

    const-string v0, "OverflowMenuWrapper(\n   \u2026ity.RIGHT or Gravity.TOP)"

    invoke-static {v5, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->clearSubscriptions()V

    new-instance v1, Lle2;

    invoke-direct {v1, v5}, Lle2;-><init>(Lzt7;)V

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/view2/Div2View;->subscribe(Lxt7;)V

    new-instance v11, Lfe2;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lfe2;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div2/DivAction;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/json/expressions/Expression;Lzt7;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {p2, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_5
    move-object v4, p1

    new-instance v6, Lge2;

    move-object v0, v6

    move-object/from16 v1, p5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lge2;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_6
    :goto_2
    iget-boolean v0, v8, Lcom/yandex/div/core/view2/divs/DivActionBinder;->d:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-static {p2, v10, v0, v10}, Lme2;->n(Landroid/view/View;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final w(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lbk2;Ljava/util/List;ZLcom/yandex/div/json/expressions/Expression;)V
    .locals 9

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v1}, Lbk2;->d(Lc74;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    move-object v0, p4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/div2/DivAction;

    iget-object v3, v3, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p5, :cond_1

    move-object v1, v2

    :cond_3
    move-object v6, v1

    check-cast v6, Lcom/yandex/div2/DivAction;

    if-eqz v6, :cond_5

    iget-object p4, v6, Lcom/yandex/div2/DivAction;->e:Ljava/util/List;

    if-nez p4, :cond_4

    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to bind empty menu action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v6, Lcom/yandex/div2/DivAction;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p5, Lzt7;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-direct {p5, v0, p2, v1}, Lzt7;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;

    invoke-direct {v0, p0, p1, p4}, Lcom/yandex/div/core/view2/divs/DivActionBinder$MenuWrapperListener;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    invoke-virtual {p5, v0}, Lzt7;->e(Lzt7$a;)Lzt7;

    move-result-object p4

    const/16 p5, 0x35

    invoke-virtual {p4, p5}, Lzt7;->f(I)Lzt7;

    move-result-object v8

    const-string p4, "OverflowMenuWrapper(\n   \u2026ity.RIGHT or Gravity.TOP)"

    invoke-static {v8, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p4

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->clearSubscriptions()V

    new-instance p5, Lle2;

    invoke-direct {p5, v8}, Lle2;-><init>(Lzt7;)V

    invoke-virtual {p4, p5}, Lcom/yandex/div/core/view2/Div2View;->subscribe(Lxt7;)V

    new-instance p4, Lhe2;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p6

    invoke-direct/range {v2 .. v8}, Lhe2;-><init>(Lcom/yandex/div/core/view2/divs/DivActionBinder;Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/DivAction;Lcom/yandex/div/json/expressions/Expression;Lzt7;)V

    invoke-static {p3, p2, p4}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->z(Lbk2;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    new-instance p5, Lie2;

    move-object v0, p5

    move-object v1, p6

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lie2;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Landroid/view/View;Ljava/util/List;)V

    invoke-static {p3, p2, p5}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->z(Lbk2;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_1
    return-void
.end method
