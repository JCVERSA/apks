.class public final Lvj3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

.field public final b:Lsnb;

.field public final c:Lx9b;

.field public final d:Lm84;

.field public final e:Lcom/yandex/div/core/expression/local/RuntimeStore;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/expression/ExpressionResolverImpl;Lsnb;Lx9b;Lm84;Lcom/yandex/div/core/expression/local/RuntimeStore;)V
    .locals 1

    const-string v0, "expressionResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeStore"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvj3;->a:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    iput-object p2, p0, Lvj3;->b:Lsnb;

    iput-object p3, p0, Lvj3;->c:Lx9b;

    iput-object p4, p0, Lvj3;->d:Lm84;

    iput-object p5, p0, Lvj3;->e:Lcom/yandex/div/core/expression/local/RuntimeStore;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lvj3;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lvj3;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvj3;->f:Z

    iget-object v0, p0, Lvj3;->c:Lx9b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx9b;->a()V

    :cond_0
    iget-object p0, p0, Lvj3;->b:Lsnb;

    invoke-interface {p0}, Lsnb;->d()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lvj3;->c:Lx9b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lx9b;->a()V

    :cond_0
    return-void
.end method

.method public final c()Lcom/yandex/div/core/expression/ExpressionResolverImpl;
    .locals 0

    iget-object p0, p0, Lvj3;->a:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    return-object p0
.end method

.method public final d()Lm84;
    .locals 0

    iget-object p0, p0, Lvj3;->d:Lm84;

    return-object p0
.end method

.method public final e()Lcom/yandex/div/core/expression/local/RuntimeStore;
    .locals 0

    iget-object p0, p0, Lvj3;->e:Lcom/yandex/div/core/expression/local/RuntimeStore;

    return-object p0
.end method

.method public final f()Lx9b;
    .locals 0

    iget-object p0, p0, Lvj3;->c:Lx9b;

    return-object p0
.end method

.method public final g()Lsnb;
    .locals 0

    iget-object p0, p0, Lvj3;->b:Lsnb;

    return-object p0
.end method

.method public final h(Lsv2;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lvj3;->c:Lx9b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lx9b;->d(Lsv2;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-boolean v0, p0, Lvj3;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvj3;->f:Z

    iget-object v0, p0, Lvj3;->a:Lcom/yandex/div/core/expression/ExpressionResolverImpl;

    invoke-virtual {v0}, Lcom/yandex/div/core/expression/ExpressionResolverImpl;->o()V

    iget-object p0, p0, Lvj3;->b:Lsnb;

    invoke-interface {p0}, Lsnb;->e()V

    :cond_0
    return-void
.end method
