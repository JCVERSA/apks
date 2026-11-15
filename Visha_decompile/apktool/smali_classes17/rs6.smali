.class public Lrs6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldob;


# instance fields
.field public final a:Lcom/yandex/div/core/expression/variables/DivVariableController;

.field public final b:Le74;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/expression/variables/DivVariableController;Le74;)V
    .locals 1

    const-string v0, "variableController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableRequestObserver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrs6;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    iput-object p2, p0, Lrs6;->b:Le74;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lqnb;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrs6;->b:Le74;

    invoke-interface {v0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lrs6;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->e(Ljava/lang/String;)Lqnb;

    move-result-object p0

    return-object p0
.end method

.method public b(Lfu1;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrs6;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->b(Lfu1;)V

    return-void
.end method

.method public c(Le74;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrs6;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->h(Le74;)V

    return-void
.end method

.method public d(Lfu1;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrs6;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->i(Lfu1;)V

    return-void
.end method

.method public e(Le74;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrs6;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->c(Le74;)V

    return-void
.end method

.method public f(Le74;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrs6;->a:Lcom/yandex/div/core/expression/variables/DivVariableController;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/expression/variables/DivVariableController;->j(Le74;)V

    return-void
.end method
