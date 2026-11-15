.class public abstract Leg2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static final b(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$c;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivTypedValue$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$c;->c()Lcom/yandex/div2/ColorValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ColorValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Double;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$f;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivTypedValue$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$f;->c()Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/IntegerValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$g;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivTypedValue$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$g;->c()Lcom/yandex/div2/NumberValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/NumberValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$f;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivTypedValue$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$f;->c()Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/IntegerValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$h;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivTypedValue$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$h;->c()Lcom/yandex/div2/StrValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/StrValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$b;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivTypedValue$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$b;->c()Lcom/yandex/div2/BoolValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/BoolValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$c;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivTypedValue$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$c;->c()Lcom/yandex/div2/ColorValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ColorValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$g;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivTypedValue$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$g;->c()Lcom/yandex/div2/NumberValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/NumberValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$i;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivTypedValue$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$i;->c()Lcom/yandex/div2/UrlValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/UrlValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$a;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivTypedValue$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$a;->c()Lcom/yandex/div2/ArrayValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ArrayValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$e;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivTypedValue$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$e;->c()Lcom/yandex/div2/DictValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DictValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->a()Lxc3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwc3;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final f(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->a()Lxc3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwc3;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final g(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Long;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$f;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivTypedValue$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$f;->c()Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/IntegerValue;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final h(Lcom/yandex/div/core/view2/divs/widgets/DivInputView;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
