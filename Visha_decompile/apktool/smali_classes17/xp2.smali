.class public abstract Lxp2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwp2;)Lcom/yandex/div/json/expressions/Expression;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivVisibilityAction;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivVisibilityAction;

    iget-object p0, p0, Lcom/yandex/div2/DivVisibilityAction;->j:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivDisappearAction;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivDisappearAction;

    iget-object p0, p0, Lcom/yandex/div2/DivDisappearAction;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Trying to get duration field for unsupported DivSightAction class"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method
