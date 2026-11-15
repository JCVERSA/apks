.class public final Lyf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 1

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$m;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$m;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$m;->c()Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lyf2;->b(Lcom/yandex/div2/DivActionScrollBy;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$n;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/yandex/div2/DivActionTyped$n;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$n;->c()Lcom/yandex/div2/DivActionScrollTo;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lyf2;->c(Lcom/yandex/div2/DivActionScrollTo;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Lcom/yandex/div2/DivActionScrollBy;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 9

    iget-object p0, p1, Lcom/yandex/div2/DivActionScrollBy;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    iget-object p0, p1, Lcom/yandex/div2/DivActionScrollBy;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int p0, v2

    iget-object v0, p1, Lcom/yandex/div2/DivActionScrollBy;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v7, v2

    sget-object v0, Lcom/yandex/div2/DivActionScrollBy$Overflow;->Converter:Lcom/yandex/div2/DivActionScrollBy$Overflow$a;

    iget-object v2, p1, Lcom/yandex/div2/DivActionScrollBy;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivActionScrollBy$Overflow;

    invoke-virtual {v0, v2}, Lcom/yandex/div2/DivActionScrollBy$Overflow$a;->b(Lcom/yandex/div2/DivActionScrollBy$Overflow;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p1, Lcom/yandex/div2/DivActionScrollBy;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcom/yandex/div/core/view2/items/b;->b:Lcom/yandex/div/core/view2/items/b$a;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/items/b$a;->b(Lcom/yandex/div/core/view2/items/b$a;Ljava/lang/String;Lsv2;Loj3;Lcom/yandex/div/core/view2/items/Direction;ILjava/lang/Object;)Lcom/yandex/div/core/view2/items/b;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v8, v7, p1}, Lcom/yandex/div/core/view2/items/b;->a(Ljava/lang/String;IZ)V

    invoke-virtual {p2, v8, p0, p1}, Lcom/yandex/div/core/view2/items/b;->c(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final c(Lcom/yandex/div2/DivActionScrollTo;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 7

    iget-object p0, p1, Lcom/yandex/div2/DivActionScrollTo;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    iget-object p0, p1, Lcom/yandex/div2/DivActionScrollTo;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object v0, Lcom/yandex/div/core/view2/items/b;->b:Lcom/yandex/div/core/view2/items/b$a;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/items/b$a;->b(Lcom/yandex/div/core/view2/items/b$a;Ljava/lang/String;Lsv2;Loj3;Lcom/yandex/div/core/view2/items/Direction;ILjava/lang/Object;)Lcom/yandex/div/core/view2/items/b;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/yandex/div2/DivActionScrollTo;->b:Lcom/yandex/div2/DivActionScrollDestination;

    instance-of v0, p1, Lcom/yandex/div2/DivActionScrollDestination$d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/yandex/div2/DivActionScrollDestination$d;

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionScrollDestination$d;->c()Lcom/yandex/div2/OffsetDestination;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/OffsetDestination;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p2, p1, p0}, Lcom/yandex/div/core/view2/items/b;->d(IZ)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/yandex/div2/DivActionScrollDestination$c;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/yandex/div2/DivActionScrollDestination$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionScrollDestination$c;->c()Lcom/yandex/div2/IndexDestination;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/IndexDestination;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p2, p1, p0}, Lcom/yandex/div/core/view2/items/b;->g(IZ)V

    goto :goto_0

    :cond_2
    instance-of p3, p1, Lcom/yandex/div2/DivActionScrollDestination$b;

    if-eqz p3, :cond_3

    invoke-virtual {p2, p0}, Lcom/yandex/div/core/view2/items/b;->e(Z)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/yandex/div2/DivActionScrollDestination$e;

    if-eqz p1, :cond_4

    invoke-virtual {p2, p0}, Lcom/yandex/div/core/view2/items/b;->f(Z)V

    :cond_4
    :goto_0
    return-void
.end method
